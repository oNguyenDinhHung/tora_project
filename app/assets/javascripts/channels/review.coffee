App.review = App.cable.subscriptions.create "ReviewChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("connect")

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log("disconnect")
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel    
    if $("#reviews").find("div#review_"+data.review_id).length
     	$("div#review_"+data.review_id).replaceWith(data.review_template)
    else
    	$("#reviews").append(data.review_template)
