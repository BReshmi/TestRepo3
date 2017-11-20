@isTest
public class TestVerifyDate {
    @isTest static void CheckDatesTestMoreThan30()
        {
            Date date1 = Date.today();
            Date date2 = date1.addDays(32);
            Date date3 = VerifyDate.CheckDates(date1, date2);
                
            Date startDate = System.Date.today().toStartOfMonth(); 
            Date endDate = startDate.addMonths(1).addDays(-1);
            
            system.assertEquals(startDate.addMonths(1).addDays(-1), date3);
        }
    @isTest static void CheckDatesTestwithin30()
        {
            Date date1 = Date.today();
            Date date2 = date1.addDays(25);
            Date date3 = VerifyDate.CheckDates(date1, date2);
                                    
            system.assertEquals(date2, date3);
        }
}