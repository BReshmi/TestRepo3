@isTest
global class FirstdataMerchantServiceRefMock implements WebServiceMock {
    wwwFirstdataCom.SalesReferralSystemRemotePort objSalesRef = new wwwFirstdataCom.SalesReferralSystemRemotePort();
    wwwFirstdataCom.Referral referral = new wwwFirstdataCom.Referral();
    
    public String type;
    global FirstdataMerchantServiceRefMock(final String type){
             this.type = type;
    }
    
    global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send  
        
               
        if(type =='login')
        {   
			system.debug('Hi I am here');
            response.put('response_x',new wwwFirstdataCom.LoginResult());
        }
               
        if(type == 'CreateReferral')
        {
            wwwFirstdataCom.CreateReferralResponseType response_x2 = 
            new wwwFirstdataCom.CreateReferralResponseType(); 
            response.put('response_x',response_x2);
        }    
         
         
        if(type =='RetrieveReferral')
        {
            wwwFirstdataCom.RetrieveReferralResponseType response_x3 = 
            new wwwFirstdataCom.RetrieveReferralResponseType();  
            
            response.put('response_x',response_x3);
        }
               
        if(type =='RetrieveReferralDefinition')
        {
            wwwFirstdataCom.RetrieveReferralDefinitionResponseType response_x4 = 
            new wwwFirstdataCom.RetrieveReferralDefinitionResponseType();  
            
            response.put('response_x',response_x4);
        }
         
   }    
   
}