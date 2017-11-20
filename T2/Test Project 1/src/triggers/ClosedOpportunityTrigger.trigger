trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List <Task> taskobj = new List<Task>();
    
    for(Opportunity opp : [Select id from opportunity where Id in : Trigger.New and stagename = 'Closed Won'])
    {
        taskobj.add(new Task(subject = 'Follow Up Test Task',
                   WhatId=opp.Id));
    }
    if(taskobj.size() > 0) 
    {
        insert taskobj;
    }
}