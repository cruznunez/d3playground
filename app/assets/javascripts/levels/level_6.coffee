@level_6 = ->
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

  # color scale based on width
  color = d3.scale.linear()
    .domain [0, max]
    .range ['blue', 'red']

  # make a group to hold each bar and text
  barsGroup = canvas.selectAll 'rect'
    .data data
    .enter()
      .append 'g'

  # add bars to canvas using proper width and color
  bars = barsGroup.append 'rect'
      .attr
        height: 50
        width: (d) -> width d
        y: (d, i) -> i * 100
        fill: (d) -> color d

  # add text to each group
  barsGroup.append 'text'
    .attr
      y: (d, i) -> (i * 100) + 30
      x: (d) ->  width(d) / 2
      'text-anchor': 'middle'
    .text( (d) -> d )
    .style fill: 'transparent'

  # add scale
  canvas.append 'g'
    .attr class: 'axis', transform: "translate(0, #{h - 30})"
    .call axis

  # function for showing text
  showText = (rect) ->
    $(rect).next().css fill: 'white'

  # function for hiding text
  hideText = (rect) ->
    $(rect).next().css fill: 'transparent'

  # add eventlisteners for each bar
  bars.on 'mouseover', -> showText @
  bars.on 'mouseout', -> hideText @
