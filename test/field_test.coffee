# jasmine specs for fields go here

describe 'fields', ->
  beforeEach ->
    @view = new Formbuilder()

  it 'should exist', ->
    expect(@view).not.toBeNull()


