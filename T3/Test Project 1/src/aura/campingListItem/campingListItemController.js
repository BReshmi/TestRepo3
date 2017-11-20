({
	packItem : function(component, event, helper) {
		var campingListItem = component.get("v.item");
        campingListItem.Packed__c = true;
        component.set("v.item", campingListItem);
        
        var btnClicked = event.getSource();
        btnClicked.set("v.disabled", true);
	}
})