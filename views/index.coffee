h1 'Make a math worksheet'
form action: 'worksheet', method: 'get', ->
  div ->
    label 'Number of problems', for: 'count'
    input id: 'count', name: 'count', value: 10
  div ->
    label 'Highest term', for: 'max'
    input id: 'max', name: 'max', value: 5
  div ->
    input type: 'submit', value: 'Make the worksheet'
