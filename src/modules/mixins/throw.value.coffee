Throw = require '../throw'
errors = require '../errors'

mixin = () ->
  @isNull = (value, name) ->
    fn = (value) -> return null == value
    @evaluate value, fn, errors.NullValueException, "[#{name}] cannot be null"

  @isUndefined = (value, name) ->
    fn = (value) -> return undefined == value
    @evaluate value, fn, errors.UndefinedValueException, "[#{name}] cannot be undefined"

  @isEmpty = (value, name) ->
    fn = (value) -> return '' == value
    @evaluate value, fn, errors.EmptyValueException, "[#{name}] cannot be empty"

  @isNullOrUndefined = (value, name) ->
    @isNull value, name
    @isUndefined value, name

  @isNullOrEmpty = (value, name) ->
    @isNull value, name
    @isEmpty value, name

  @isUnspecified = (value, name) ->
    @isNull value, name
    @isUndefined value, name
    @isEmpty value, name

module.exports = () -> mixin.call Throw
