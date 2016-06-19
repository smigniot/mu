function imageGallery(root, nodes) {
    var IMGW = 200;
    var IMGH = 124;
    var svg = root.append("g")
        .attr("class","imagegallery")
        ;
    var n = nodes.length;
    var cols = Math.max(1, Math.round(Math.sqrt(n)));
    var rows = Math.floor(n/cols)+1; // merely

    var dim = function(d) { return +(root.style(d).replace(/px/,"")) };
    var w = dim("width");
    var h = dim("height");
    var x0 = Math.round(w/5);
    var dw = Math.round((w*3/5)/cols);
    var y0 = Math.round(h/5);
    var dh = Math.round((h*3/5)/rows);

    nodes.forEach(function(d, i) {
            var y = Math.floor(i/cols);
            var x = i%cols;
            var g = svg.append("g")
            .attr("class", "preview")
            .attr("transform", "translate("+
                (x0+x*dw)+","+(y0+y*dh)+")")
            ;
            g.append("rect")
            .attr("width", dw)
            .attr("height", dh)
            .attr("class","glassy shadowed")
            ;
            g.append("image")
            .attr("xlink:href", d.url)
            .attr("width", dw)
            .attr("height", dh)
            ;
            });
    svg.on("dblclick", function() { svg.remove(); });
    return svg;
}

