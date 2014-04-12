#!/usr/bin/env coffee

'user strict'

fs = require 'fs'
argv = require('optimist')
tinder = require('../index.coffee')
action = target = null

argv = argv
  .usage('Usage: tinder <action> [folder], ex. tinder new foo')
  .check (o) ->
    action = o._[0]
    target = o._[1]
    throw new Error 'You need to provide action' unless action
    if action is 'new'
      throw new Error 'You need to specify target folder' unless target
      throw new Error 'You need to specify a non-existent folder' if fs.existsSync(target)
  .argv

switch action
  when 'new' then tinder.new(target)
  when 'server' then tinder.server()
  when 'gist' then tinder.gist()
  when 'codepen' then tinder.codepen()
  else
    throw new Error 'Invalid action.'

