@level_1 = ->
  # select something on the page and change it's contents
  d3.select('p').text 'D3 is taking over'

  # instead of selecting, add to the page, give it color
  d3.select 'body'
    .append 'p'
      .text 'New paragraph, who dis?'
      .style 'color', 'red'
