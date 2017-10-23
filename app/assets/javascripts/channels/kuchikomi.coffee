App.kuchikomi = App.cable.subscriptions.create "KuchikomiChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("connect_to_kuchikomi_app")
  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log("disconnect_from_kuchikomi_app")
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # if $("#app_"+data.app_id+"_kuchikomis").find("div#kuchikomi_"+data.kuchikomi_id).length
  #    	$("div#kuchikomi_"+data.kuchikomi_id).replaceWith(data.kuchikomi_template)
  #   else
    # $("#app_"+data.app_id+"_kuchikomis").append(data.kuchikomi_template)
    $(data.kuchikomi_template).prependTo($("#app_"+data.app_id+"_kuchikomis")).hide().show(1500);