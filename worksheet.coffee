express = require('express')

app = express.createServer()
app.set 'view engine', 'coffee'
app.register '.coffee', require('coffeekup').adapters.express

app.use express.static(__dirname + '/public')
app.get '/', (req, res) -> res.render('index')
app.get '/worksheet', (req, res) ->
  count = req.query.count || 10
  max = parseInt(req.query.max || 5)
  rng = -> Math.floor(Math.random() * (max + 1))
  problems = ({a:rng(), b:rng()} for x in [1..count])
  res.render('worksheet', {problems: problems})

app.listen(process.env.PORT || 3000)
