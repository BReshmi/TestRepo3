global class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful{
    global Integer recordsProcessed = 0;
     global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, LeadSource FROM LEAD where company like \'%Test%\''
        );
     }

      global void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
        for (Lead ld : scope) {
            ld.LeadSource = 'DreamForce';
            recordsProcessed = recordsProcessed + 1;
        }
        update scope;
    }  

    global void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed. Shazam!');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
    }

}