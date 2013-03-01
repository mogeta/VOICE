#!/bin/bash
# runhubot

export HUBOT_IRC_NICK=""
export HUBOT_IRC_ROOMS="#"
export HUBOT_IRC_SERVER=""
export HUBOT_IRC_PORT=""
export HUBOT_IRC_PASSWORD=""
export HUBOT_IRC_DEBUG=""
export HUBOT_IRC_USESSL=""
export HUBOT_IRC_SERVER_CERT_EXPIRED=""

export HTTP_PROXY=""
export HTTPS_PROXY=""

export PORT=""


node_modules/hubot/bin/hubot -a irc -n mybot