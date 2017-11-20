({
    clickCreate: function(component, event, helper) {
        
            // Create the new expense
            var myHeight = component.get("v.myHeight");
        	var myWeight = component.get("v.myWeight");
        	var bmi = (myWeight/myHeight)/myHeight;
            var outName = component.find("nameOutput");
      		outName.set("v.value", bmi);

            //helper.createBMI(component, newBMI);
    }
})