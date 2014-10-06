Formbuilder.registerField 'fieldset',

  order: 55

  view: """
    <fieldset id="<%= rf.get('cid') %>" class='fb-response-fields'></fieldset>
  """

  edit: ""

  addButton: """
    <span class="symbol"><span class="fa fa-home"></span></span> FieldSet
  """

  defaultAttributes: (attrs) ->
    attrs.container = true
    attrs
