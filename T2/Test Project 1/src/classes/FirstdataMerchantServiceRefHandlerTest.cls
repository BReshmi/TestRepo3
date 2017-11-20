@isTest
private class FirstdataMerchantServiceRefHandlerTest {
	@isTest static void testCallFirstdataMerchantServiceRef() {              
        // This causes a fake response to be generated        
       // Test.setMock(WebServiceMock.class, new FirstdataMerchantServiceRefMock());
        // Call the method that invokes a callout
        Set<Id> ids = new Set<Id>{};
            
         		Lead testLead1 = new Lead();
                testLead1.FirstName = 'Test';
                testLead1.LastName = 'Lead 1';
                testLead1.Company = 'Test Company';
                testLead1.Phone = '555-555-5555';
        		//testLead1.ExternalReferralType__c = 'Merchant Services';
            	insert testLead1;
       
        ids.add(testLead1.id);
        
        FirstdataMerchantServiceRefHandler.CallFirstdataMerchantServiceRef();
    }
}