public class FirstdataMerchantServiceRefHandler {
    public static void CallFirstdataMerchantServiceRef()
    {
        
 
        String domain = 'webster-ws';
        String username = 'wuser';
        String password = 'Webster17!';
        try
        {
            wwwFirstdataCom.SalesReferralSystemRemotePort objSalesRef = new wwwFirstdataCom.SalesReferralSystemRemotePort();
        	wwwFirstdataCom.LoginResult lResult = objSalesRef.Login(domain,username, password);
       
                system.debug('   loginResult Hahaha' + lResult.sessionId);
            
             /* 
                FirstdataMerchantServiceRef.Referral result = objSalesRef.RetrieveReferral(lResult.sessionId, 1212595);
                
                system.debug('----- fdcReferralStatus = ' + result.fdcReferralStatus);
                system.debug('business: ' + result.business);
                
                system.debug('----- fdcCreatedAt = ' + result.fdcCreatedAt);
                system.debug('----- Id = ' + result.Id);
                system.debug('----- referralId = ' + result.referralId);
                system.debug('----- fdcActivationDate = ' + result.fdcActivationDate);
                system.debug('----- fdcAssignedTo = ' + result.fdcAssignedTo);
                system.debug('----- fdcCreditDate = ' + result.fdcCreditDate);
                system.debug('----- fdcCreditStatus = ' + result.fdcCreditStatus);
                system.debug('----- fdcDbaName = ' + result.fdcDbaName);
                system.debug('----- fdcLostReasonCode = ' + result.fdcLostReasonCode);
                system.debug('----- fdcMerchantId = ' + result.fdcMerchantId);
                system.debug('----- fdcReferralStatus = ' + result.fdcReferralStatus);
                system.debug('----- fdcUpdatedAt = ' + result.fdcUpdatedAt);
                */            
        }catch(Exception e)
        {
            system.debug(e.getMessage());
        }
    }

}