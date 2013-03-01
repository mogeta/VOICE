# Description:
#   Hello World

module.exports = (robot) ->

  robot.hear /hello world/, (msg) ->
    msg.send "こんにちは世界!!!"