for problem in @problems
  div class: 'problem', ->
    div class: 'term-a', -> "#{problem.a}"
    div class: 'term-b', -> "+ #{problem.b}"
