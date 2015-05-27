Throw =
  evaluate: (value, fn, type, message) ->
    if fn.call @, value then throw new type message

module.exports = Throw
