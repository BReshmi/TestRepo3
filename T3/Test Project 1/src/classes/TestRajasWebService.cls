public class TestRajasWebService {
public static void CallRajasWebService()
{
    partnerSoapSforceCom.Soap sp = new partnerSoapSforceCom.Soap();

/* For demonstration purposes only, enter your credentials on the following
   lines, but if you're going to use this a lot or in production, encrypt your credentials and store them somewhere and then decrypt them here.
*/
String username = 'rajabanerjee1@att.net';
String password = 'change500' + 'hjFdOQ3DSvnVN2W4A7V7Qhvr';

partnerSoapSforceCom.LoginResult loginResult = sp.login(username, password);

system.debug('   loginResult ' + loginResult);

soapSforceComSchemasClassTestwebser.TestWebService   apexWebSvc = new soapSforceComSchemasClassTestwebser.TestWebService();
soapSforceComSchemasClassTestwebser.SessionHeader_element sessionHeader = new soapSforceComSchemasClassTestwebser.SessionHeader_element();
sessionHeader.sessionId = loginResult.sessionId; 

    system.debug('   sessionId ' + sessionHeader.sessionId);

// The Web services have a maximum timeout of 2 minutes. The timeout value
// is in milliseconds.	
    
apexWebSvc.SessionHeader = sessionHeader;

soapSforceComSchemasClassTestwebser testsRequest = new soapSforceComSchemasClassTestwebser();

		
String testResults = apexWebSvc.saywelcome('Reshmi');

system.debug('    testResults ' +  testResults);

}
}