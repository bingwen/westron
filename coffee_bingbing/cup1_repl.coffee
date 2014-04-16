stdin = process.openStdin()
stdin.setEncoding 'utf8'

stdin.on 'data', (input) ->
    name = input.trim()
    process.exit() if name == 'exit'
    console.log "Hello #{name}"
    console.log "Enter another name or 'exit' to exit"
console.log 'Enter your name'
