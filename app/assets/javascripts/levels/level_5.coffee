@level_5 = ->
  # data we want to visualize
  data = [20, 40, 50, 60, 70]

  # reusable constants
  h = w = 500

  # variable for max value in array
  max = Math.max.apply null, data

  # function in variable to scale width appropriately
  width = d3.scale.linear()
    .domain [0, max]
    .range [0, w]

  # axis generator
  axis = d3.svg.axis()
    .ticks 20
    .scale width

  # add a canvas to page
  canvas = d3.select 'body'
    .append 'svg'
    .attr height: h, width: w
    .append 'g'
    .attr transform: 'translate(20, 0)'

  # color scale based on width
  color = d3.scale.linear()
    .domain [0, max]
    .range ['blue', 'red']

  # add bars to canvas using proper width and color
  canvas.selectAll 'rect'
    .data data
    .enter()
      .append 'rect'
      .attr
        height: 50
        width: (d) -> width d
        y: (d, i) -> i * 100
        fill: (d) -> color d

  # add scale
  canvas.append 'g'
    .attr class: 'axis', transform: "translate(0, #{h - 30})"
    .call axis
