# Usage: coffee app.coffee -- $PORT

express = require 'express'; moment = require 'moment'
app = express(); app.use express.logger()

app.get '/', (req, res) ->
  res.setHeader 'Content-Type', 'text/plain'
  res.send """
    Hello World!
    The time is: #{moment().format 'YYYY-MM-DD HH:mm:ss'}

    - napp-hello-express

  """

port = process.argv[2] || process.env.PORT || 8888
app.listen port, -> console.log "Listening on #{port}"
