function treeforce(rootsvg, root, onselection, ondblclick) {
    // Coerce to getter
    var getroot = (typeof root == typeof treeforce)?root:function(){return root};

    function shortened(t) {
        if(!t) return t;
        if(t.length < 32) return t;
        return t.substring(0,30)+"..";
    }
    var svg = d3.select(rootsvg).append("g");
    var dim = function(d) { return +($(rootsvg).css(d).replace(/px/,"")) };
    var force = d3.layout.force()
        .linkDistance(function(d){return (d.target.type=="file")?40:100})
        .charge(function(d){return (d.type=="file")?-40:-200})
        .gravity(.05)
        .size([dim("width"),dim("height")])
        .on("tick", tick);

    var link = svg.selectAll(".link"),
        node = svg.selectAll(".node");

    /*
    var width = dim("width"),
        height = 128;
    var timeline = d3.select(document.body)
        .append("svg")
        .attr("width","100%")
        .attr("height","128")
        .attr("class","timeline")
        ;
    var y = d3.scale.linear()
        .range([height, 0]);
    var bar = timeline.selectAll("g");
    */

    var lassoglass = svg.append("rect")
        .attr("width", dim("width"))
        .attr("height", dim("height"))
        .style("opacity", 0);
    var lasso = d3.lasso().area(lassoglass);
    svg.call(lasso);
    lasso.on("start",function(){onselection("start",lasso)});
    lasso.on("draw",function(){onselection("draw",lasso)});
    lasso.on("end",function(){onselection("end",lasso)});

    function update() {
        var nodes = flattenActives(getroot()),
            links = d3.layout.tree().links(nodes);

        // Restart the force layout.
        force
            .nodes(nodes)
            .links(links)
            .start();

        // Update links.
        link = link.data(links, function(d) { return d.target.id; });

        link.exit().remove();

        link.enter().insert("line", ".node")
            .attr("class", "link");

        // Update nodes.
        node = node.data(nodes, function(d) { return d.id; });

        node.exit().remove();

        var nodeEnter = node.enter().append("g")
            .attr("class", "node")
            .on("click", click)
            .on("dblclick", ondblclick)
            .call(force.drag);

        function nodeRay(d) {
            var ex = Math.log10(d.size);
            if(d.type == "dir") {
                return Math.max(8.5,3.5*ex);
            } else {
                return Math.max(7.5,ex);
            }
        }


        nodeEnter.append("circle")
            .attr("class", "fsnode")
            .attr("r", nodeRay)
            ;

        nodeEnter.append("text")
            .attr("class", "fsnode")
            .attr("dy", ".35em")
            .text(function(d) { return shortened(d.name); })
            ;

        var tooltip = nodeEnter.append("g")
            .attr("class", "tooltip")
            ;
        tooltip.append("text")
            .attr("class", "fsname")
            .attr("dx", function(d) { return -nodeRay(d)/2; })
            .attr("dy", function(d) { return nodeRay(d)*2; })
            .text(function(d){return d.name})
            ;    
        tooltip.append("text")
            .attr("class", "fsdate")
            .attr("dx", function(d) { return -nodeRay(d)/2; })
            .attr("dy", function(d) { return 16+nodeRay(d)*2; })
            .text(function(d){
                return moment(d.date).fromNow()+" - "+filesize(d.size);
            })
            ;    

        node.select("circle.fsnode")
            .style("fill", color)
            ;

        // Activate lasso
        lasso.items(node);

        /*
        var bydate = crossfilter(nodes)
            .dimension(function(n) { return +n.date; })
            ;
        var freqs = bydate.group(function(n) {
            var d = new Date(n);
            return +(new Date(d.getFullYear(),d.getMonth()+1,d.getDate()));
        }).reduceCount().all();
        console.log("DBG:", freqs);
        bar = bar.data(freqs, function(d) { return d.key+" "+d.value; });

        var barWidth = width/freqs.length;
        y.domain([0, d3.max(freqs, function(d) { return d.value; })]);

        bar.exit().remove();
        timeline.empty();
        var g = bar.enter().append("g")
            .attr("transform", function(d, i) { 
                return "translate(" + i * barWidth + ",0)"; });
        g.append("rect")
            .attr("y", function(d) { return y(d.value); })
            .attr("height", function(d) { return height - y(d.value); })
            .attr("width", barWidth - 1)
            .append("title")
            .text(function(d) {
                return moment(d.key).format("DD/MM");
            })
            ;

        g.append("text")
            .attr("x", barWidth / 2)
            .attr("y", function(d) { return y(d.value) + 3; })
            .attr("dy", ".75em")
            .text(function(d) { return d.value; });
        */
    }

    function tick() {
        link.style("visibility", function(d) { 
                return (d.source.active && d.target.active)?"visible":"hidden";
            })
            .attr("x1", function(d) { return d.source.x; })
            .attr("y1", function(d) { return d.source.y; })
            .attr("x2", function(d) { return d.target.x; })
            .attr("y2", function(d) { return d.target.y; });

        node.attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; });
    }

    function color(d) {
        return d._children ? "#3182bd" // collapsed package
            : d.children ? "#c6dbef" // expanded package
            : "#fd8d3c"; // leaf node
    }

    // Toggle children on click.
    function click(d) {
        if (d3.event.defaultPrevented) return; // ignore drag
        if (d.children) {
            d._children = d.children;
            d.children = null;
        } else {
            d.children = d._children;
            d._children = null;
        }
        update();
    }
    // Returns a list of all nodes under the root.
    function flattenActives(top) {
        var result = [], i = 0;

        function recurse(node) {
            if (node.children) node.children.forEach(recurse);
            if (!node.id) node.id = ++i;
            if(node.active) result.push(node);
        }

        recurse(top);
        return result;
    }

    return update;
}
