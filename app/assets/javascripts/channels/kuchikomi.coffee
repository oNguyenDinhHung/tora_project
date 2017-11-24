App.kuchikomi = App.cable.subscriptions.create "KuchikomiChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("connect_to_kuchikomi_app")
  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log("disconnect_from_kuchikomi_app")
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel    
    if($('#current_user_id').text()==data.user_id)
      $(data.kuchikomi_template).prependTo($("#app_"+data.app_id+"_kuchikomis")).hide().show(1500);
    else
      $(data.kuchikomi_template.replace(/<a[^\*]+a>/g,'')).prependTo($("#app_"+data.app_id+"_kuchikomis")).hide().show(1500);

