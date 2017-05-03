@level_2 = ->
  # make a canvas to "draw" on
  canvas = d3.select 'body'
    .append 'svg'
      .attr 'height', 500
      .attr 'width', 500
      .attr 'style', 'border: 1px solid blue;'

  # add a circle to the canvas
  # circle needs center (250, 250)
  # radius
  canvas.append('circle').attr cx: 250, cy: 250, r: 50, fill: 'red'

  # add a rectangle to the canvas
  # rectangles need height, width
  canvas.append('rect').attr height: 100, width: 50, fill: 'blue'

  # add a line to the canvas
  # line needs point 1 (x1, y1) && point 2 (x2, y2)
  canvas.append 'line'
    .attr
      x1: 0
      y1: 100
      x2: 400
      y2: 400
      stroke: 'green'
      'stroke-width': 10
