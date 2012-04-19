h1 'Make a math worksheet'
form action: 'worksheet', method: 'get', ->
  div class: 'field', ->
    label for: 'count', -> 'Number of problems'
    input id: 'count', name: 'count', value: 10
  div class: 'field', ->
    label for: 'max', -> 'Highest term'
    input id: 'max', name: 'max', value: 5
  div ->
    input type: 'submit', value: 'Make the worksheet'
