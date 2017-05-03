@level_8 = ->
  # data we want to visualize
  data = [10, 50, 80]

  # contants: height and width
  h = w = 1500
  r = 300

  color = d3.scale.ordinal()
    .range ['red', 'blue', 'orange']

  # canvas setup
  canvas = d3.select 'body'
    .append 'svg'
    .attr height: h, width: w

  # add a group to the canvas
  group = canvas.append 'g'
    .attr transform: 'translate(300, 300)'

  # arc generator
  arc = d3.svg.arc()
    .innerRadius r - 100
    .outerRadius r

  # convert regular array into useful pie data
  pie = d3.layout.pie()
    .value( (d) -> d )

  # add a group with a class of arc to the canvas for every element inside the data array
  arcGroups = group.selectAll 'arc'
    .data pie data
    .enter()
    .append 'g'
    .attr class: 'arc'

  # add a path to every arcGroup
  arcGroups.append 'path'
    .attr d: arc, fill: (d) -> color d.data

  # add text to each arc
  arcGroups.append 'text'
    .attr 'transform', (d) -> "translate(#{arc.centroid(d)})"
    .text( (d) -> d.data )
