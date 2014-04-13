module.exports = do ->

  fs = require 'fs'
  ncp = require('ncp').ncp
  exec = require 'execSync'
  path = require 'path'

  return {

    new: (target) ->
      ncp __dirname, target, (err) ->
        return console.error(err) if err is on
        exec.run [
          "cd #{target}"
          "rm -rf .git"
          "rm -rf bin"
          "rm -f index.coffee"
          "mv package.json.sample package.json"
          'git init .'
          'git add .'
          'git commit -m "Initial commit"'
        ].join(';')
        console.log "\n[tinder] Your tinder is ready. Set tmux by executing the following commands."
        console.log "----------------------------------------------------------------------------"
        console.log "cd #{target}; tinder server"
        console.log "----------------------------------------------------------------------------"

    server: (port = 8000) ->
      session = path.basename(path.resolve('./'))
      exist = exec.exec("tmux has-session -t #{session}").code is 0
      exec.run [
        "lsof -i tcp:#{port} | awk 'NR!=1 {print $2}' | xargs kill"
        "tmux -2 new -d -s #{session}"
        "tmux rename-window -t #{session}:1 'editor'"
        "tmux send-keys -t #{session}:1 'vim app/assets/stylesheets/demo.coffee -c \"vsp app/assets/javascripts/demo.html\" -c \"wincmd l\"  -c \"sp app/assets/javascripts/demo.sass\"' C-m"
        "tmux new-window -t #{session}:2 -n 'server' 'gulp server --port=#{port}'"
        "tmux select-window -t #{session}:1"
      ].join(';') unless exist
      console.log "\n[tinder] Your tmux is ready. Make some fire by executing the following commands."
      console.log "----------------------------------------------------------------------------"
      console.log "tmux attach -t #{session}"
      console.log "----------------------------------------------------------------------------"

    gist: (target) ->
      console.log '[tinder] gist - not ready'

    codepen: (target) ->
      console.log '[tinder] codepen - not ready'

  }

