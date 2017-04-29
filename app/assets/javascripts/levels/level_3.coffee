@level_3 = ->
  # data we want to visualize
  data = [20, 40, 50]

  # add a canvas
  canvas = d3.select 'body'
    .append 'svg'
    .attr height: 500, width: 500

  # add bars to canvas using our data and functions
  canvas.selectAll 'rect'
    .data data
    .enter()
      .append 'rect'
      .attr
        height: 50
        width: (d) -> d * 10
        y: (d, i) -> i * 100
