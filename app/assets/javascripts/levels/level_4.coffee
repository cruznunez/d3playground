@level_4 = ->
  # data we want to visualize
  # data = [20, 40, 50, 60, 70]
  data = [
    Math.random(), Math.random(), Math.random(), Math.random(), Math.random()
    Math.random(), Math.random(), Math.random(), Math.random(), Math.random()
  ]

  # constants that we will need in many places of our code
  h = w = 500

  # variable for maximum value from our data
  max = Math.max.apply null, data

  # add a canvas to the page
  canvas = d3.select 'body'
    .append 'svg'
    .attr height: h, width: w

  # variable with function that creates a new width based on our data
  width = d3.scale.linear()
    .domain [0, max]
    .range [0, w]

  # function in a variable that creates a new color based on our data
  color = d3.scale.linear()
    .domain [0, max]
    .range ['blue', 'red']

  # add some bars with proper width and color
  canvas.selectAll 'rect'
    .data data
    .enter()
      .append 'rect'
      .attr
        height: 50
        width: (d) -> width d
        y: (d, i) -> i * 50
        fill: (d) -> color d
