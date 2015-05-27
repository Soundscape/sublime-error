lib = require '../'
lib.mixins.value()
Throw = lib.Throw

describe 'Throw test suite', ()  ->
  # EMPTY
  it 'should throw when value is NULL', () ->
    value = null
    expect(()-> Throw.isNull value, 'value').toThrow()

  it 'should NOT throw when value is NOT NULL', () ->
    value = 42
    expect(()-> Throw.isNull value, 'value').not.toThrow()

  # UNDEFINED
  it 'should throw when value is undefined', () ->
    value = undefined
    expect(()-> Throw.isUndefined value, 'value').toThrow()

  it 'should NOT throw when value is NOT undefined', () ->
    value = null
    expect(()-> Throw.isUndefined value, 'value').not.toThrow()

  # EMPTY
  it 'should throw when value is empty', () ->
    value = ''
    expect(()-> Throw.isEmpty value, 'value').toThrow()

  it 'should NOT throw when value is NOT empty', () ->
    value = null
    expect(()-> Throw.isEmpty value, 'value').not.toThrow()

  # NULL OR UNDEFINED
  it 'should throw when value is either undefined or NULL', () ->
    value1 = undefined
    value2 = null
    expect(()-> Throw.isNullOrUndefined value1, 'value1').toThrow()
    expect(()-> Throw.isNullOrUndefined value2, 'value2').toThrow()

  it 'should NOT throw when value is NOT undefined nor NULL', () ->
    value = 42
    expect(()-> Throw.isNullOrUndefined value, 'value').not.toThrow()

  # NULL OR EMPTY
  it 'should throw when value is either NULL or empty', () ->
    value1 = ''
    value2 = null
    expect(()-> Throw.isNullOrEmpty value1, 'value1').toThrow()
    expect(()-> Throw.isNullOrEmpty value2, 'value2').toThrow()

  it 'should NOT throw when value is NOT NULL nor empty', () ->
    value = 'lorem ipsum dolor sit amet'
    expect(()-> Throw.isNullOrEmpty value, 'value').not.toThrow()

  # NULL OR UNDEFINED OR EMPTY
  it 'should throw when value is unspecified', () ->
    value1 = undefined
    value2 = null
    value3 = ''
    expect(()-> Throw.isUnspecified value1, 'value1').toThrow()
    expect(()-> Throw.isUnspecified value2, 'value2').toThrow()
    expect(()-> Throw.isUnspecified value3, 'value3').toThrow()

  it 'should NOT throw when value is NOT unspecified', () ->
    value = 42
    expect(()-> Throw.isUnspecified value, 'value').not.toThrow()
