window.bp = App.cable.subscriptions.create 'EditorChannel',
  connected: ->
    console.log('Subscribed to EditorChannel.')

  rejected: ->
    console.log('Error subscribing to EdiotorChannel.')

  ajaxSave: ->
    $.post(
      method: 'put'
      format: 'js'
      url: '/projects/1/issues/11'
      data: $('#edit_issue_11').serialize()
    )

  save: (data)->
    @perform 'save',
      issue: $('#issue_text').val()
      issue_id: '11'
