global class TestBatchclass implements 
    Database.Batchable<sObject>, Database.Stateful {
    
    // instance member to retain state across transactions
    global Integer recordsProcessed = 0;

    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, IsVisible__c, IsDuplicate__c, DateChecked__c from lead where IsDuplicate__c = true'
        );
    }

    global void execute(Database.BatchableContext bc, List<Lead> scope){        
        for (Lead ld : scope) {
            if(ld.IsDuplicate__c == true && ld.DateChecked__c < system.today() - 30)
            {
                ld.IsVisible__c = false;
            }
            else
            {
                ld.IsVisible__c = true;
            }
                
                // increment the instance member counter
                recordsProcessed = recordsProcessed + 1;
            }
        update scope;
    }    

    global void finish(Database.BatchableContext bc){
    }    

}