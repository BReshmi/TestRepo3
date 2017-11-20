({
    createBMI: function(component, expense) {
        var theBMIs = component.get("v.BMIs");
 
        // Copy the expense to a new object
        // THIS IS A DISGUSTING, TEMPORARY HACK
        var newBMI = JSON.parse(JSON.stringify(expense));
 
        theBMIs.push(newBMI);
        component.set("v.BMIs", theBMIs);
    }
})