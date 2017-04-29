# videos
- d3js.org
  - Examples/Showreel
    - http://vimeo.com/29862153
- vienno's playlist https://www.youtube.com/watch?v=n5NcCoa9dDU&list=PL6il2r9i3BqH9PmbOf5wA5E1wOG3FT22p

# setup
- gem 'd3_rails'
- application.js: //= require d3.v3

# lvl 1 - selecting things with d3
- copy text below
  - <h1>Pages#level_1</h1>
  - <p>Find me in app/views/pages/level_1.html.erb</p>
- make a level_1 function (@)
- select something on the page and change it's contents
- instead of selecting, add to the page, give it color

# lvl 2 - canvas, circle, rectangle, line
- make a level_2 function
- make a canvas to "draw" on
- add a circle to the canvas
  - center, radius
- add a rectangle to the canvas
  - height, width
- add a line to the canvas
  - point made of x and y coordinate
  - stroke
  - stroke-width

# lvl 3 - bar graph
- data: 20, 40, 50
- add a canvas
- add bars to canvas using our data and functions
  - new functions
    - selectAll()
    - data()
    - enter()

# lvl 4 - bar graph with linear scales
- data: 20, 40, 50, 60, 70
- constants: height, width
- add canvas
- make a bar width generator
- make a bar color generator
- add the bars
  - use the generators we defined above
