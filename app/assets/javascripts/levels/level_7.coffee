@level_7 = ->
  # contants: height and width
  h = w = 500

  # canvas setup
  canvas = d3.select 'body'
    .append 'svg'
    .attr height: h, width: w

  # add a group to the canvas
  group = canvas.append 'g'
    .attr transform: 'translate(100, 100)'

  # circle variables
  r = 100
  p = Math.PI * 2

  # arc generator
  arc = d3.svg.arc()
    .innerRadius r - 20
    .outerRadius r
    .startAngle 0
    .endAngle p - 1

  group.append 'path'
    .attr d: arc
