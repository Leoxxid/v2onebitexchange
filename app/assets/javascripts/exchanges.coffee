$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
          type: 'GET'
          dataType: 'json'
          data: {
                  source_currency: $("#source_currency").val(),
                  target_currency: $("#target_currency").val(),
                  amount: $("#amount").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;

  $('#swap').click ->
    console.log('a')
    source_currency = $('#source_currency').val()
    target_currency = $('#target_currency').val()
    $('#source_currency').val(target_currency).change()
    $('#target_currency').val(source_currency).change()

  $('form').on 'keyup change paste', 'input, select, textarea', ->
    if $('#amount').val()
      $('form').submit()
    else
      $('#result').val('')
