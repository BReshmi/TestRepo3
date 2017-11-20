trigger AddRelatedRecord on Account(after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();
    
    
    Map<Id, Account> acctsWithOpps = new Map<Id, Account>([Select Id, (Select Id from Opportunities) from Account 
                                                           where Id IN :Trigger.New]);
    For(Account a: Trigger.New)
    {
        System.debug('acctsWithOpps.get(a.Id).Opportunities.Size() count for Account Id:' + a.Id);
        if(acctsWithOpps.get(a.Id).Opportunities.Size() == 0)
        {
            oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id));
        }
    }
    
    if(oppList.size()>0)
        insert oppList;
}