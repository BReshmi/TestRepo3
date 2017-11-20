({
	 handleClick: function(component, event, helper) {
        var btnClicked = event.getSource();         // the button
        var btnMessage = btnClicked.get("v.label"); // the button's label
        console.log("handleClick2: Message: " + btnMessage);

        // component.set("v.message", btnMessage);     // update our message

	},
    handleClick2: function(component, event, helper) {
    var newMessage = event.getSource().get("v.label");
    component.set("v.message", newMessage);

	}

})