#!/usr/bin/env coffee

'user strict'

fs = require 'fs'
argv = require('optimist')
tinder = require('../index.coffee')
action = target = null

argv = argv
  .usage('Usage: tinder <action> <folder>, ex. tinder new foo')
  .check (o) ->
    action = o._[0]
    target = o._[1]
    if not action or not target
      throw new Error 'You need to provide both <action> and <path>'
    if fs.existsSync(target)
      throw new Error 'You need to specify a non-existent folder'
  .argv

switch action
  when 'new' then tinder.new(target)
  when 'gist' then tinder.gist(target)
  else
    throw new Error 'Invalid action.'

