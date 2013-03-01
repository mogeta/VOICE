querystring = require('querystring')

module.exports = (robot) ->

  robot.router.get "/hubot/say", (req, res) ->

    query = querystring.parse(req._parsedUrl.query)

    fault = (msg) ->
      res.end "1:"+msg
      return

    fault("no message") if !query.message
    fault("no room")    if !query.room

    send = (room, msg) ->
      response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
      response.send msg

    send ("#"+query.room),query.message
    res.end "0"
