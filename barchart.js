function barchartKVList(pairs, options) {
    var margin = {top: 20, right: 20, bottom: 70, left: 40},
        width = (options.width || 600) - margin.left - margin.right,
        height = (options.height || 300) - margin.top - margin.bottom;

    var x = d3.scale.ordinal().rangeRoundBands([0, width], .05);

    var y = d3.scale.linear().range([height, 0]);

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left")
        .ticks(10);

    var svg = options.svg.append("g")
            .attr("transform", "translate(" 
                + margin.left + "," + margin.top + ")");

    x.domain(pairs.map(function(d) { return d.name; }));
    y.domain([0, d3.max(pairs, function(d) { return d.value; })]);

    svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
      ;

    var barg = svg.selectAll("bar")
      .data(pairs)
        .enter().append("g")
        .attr("class","bar")
        ;
    barg.append("rect")
      .style("fill", "steelblue")
      .attr("x", function(d) { return x(d.name); })
      .attr("width", x.rangeBand())
      .attr("y", function(d) { return y(d.value); })
      .attr("height", function(d) { return height - y(d.value); });
    barg.append("text")
      .attr("x", function(d) { return x(d.name)+x.rangeBand()/2; })
      .attr("y", function(d) { return y(d.value); })
      .attr("dy", ".71em")
      .style("text-anchor", "middle")
      .text(function(d) { return d.value; })
      ;
    barg.append("text")
      .attr("transform", "rotate(90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end")
      .text(function(d) { return d.name; })
      ;

}
