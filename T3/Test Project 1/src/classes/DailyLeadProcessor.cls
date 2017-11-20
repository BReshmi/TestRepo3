global class DailyLeadProcessor implements Schedulable {

    global void execute(SchedulableContext ctx) {
        List<Lead> lds = [SELECT ID, LeadSource FROM LEAD where LeadSource = null LIMIT 200];
        
        For(Lead ld: lds)
        {
        	ld.LeadSource = 'DreamForce';
        }
        Update lds;
    }
    
}