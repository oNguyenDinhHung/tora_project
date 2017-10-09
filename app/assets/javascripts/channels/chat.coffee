App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("connect")
  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log("disconnect")
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert("Vua nhan duoc du lieu "+data.message)