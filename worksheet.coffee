express = require('express')

app = express.createServer()
app.set 'view engine', 'coffee'
app.register '.coffee', require('coffeekup').adapters.express

app.use express.static(__dirname + '/public')
app.get '/', (req, res) -> res.render('index')
app.get '/worksheet', (req, res) ->
  res.render('worksheet', {problems: [{a:1,b:1}, {a:2, b:2}]})

app.listen(process.env.PORT || 3000)
