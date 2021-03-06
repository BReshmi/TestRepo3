//Generated by wsdl2apex

public class AsyncWwwFirstdataCom {
    public class RetrieveReferralDefinitionResponseTypeFuture extends System.WebServiceCalloutFuture {
        public wwwFirstdataCom.ReferralDefinition getValue() {
            wwwFirstdataCom.RetrieveReferralDefinitionResponseType response = (wwwFirstdataCom.RetrieveReferralDefinitionResponseType)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class RetrieveReferralResponseTypeFuture extends System.WebServiceCalloutFuture {
        public wwwFirstdataCom.Referral getValue() {
            wwwFirstdataCom.RetrieveReferralResponseType response = (wwwFirstdataCom.RetrieveReferralResponseType)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class LoginResponseTypeFuture extends System.WebServiceCalloutFuture {
        public wwwFirstdataCom.LoginResult getValue() {
            wwwFirstdataCom.LoginResponseType response = (wwwFirstdataCom.LoginResponseType)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class CreateReferralResponseTypeFuture extends System.WebServiceCalloutFuture {
        public wwwFirstdataCom.CreateReferralResult getValue() {
            wwwFirstdataCom.CreateReferralResponseType response = (wwwFirstdataCom.CreateReferralResponseType)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class AsyncSalesReferralSystemRemotePort {
        public String endpoint_x = 'https://test.firstdatareferrals.com/api4';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.firstdata.com', 'wwwFirstdataCom'};
        public AsyncWwwFirstdataCom.RetrieveReferralDefinitionResponseTypeFuture beginRetrieveReferralDefinition(System.Continuation continuation,String sessionId) {
            wwwFirstdataCom.RetrieveReferralDefinitionRequestType request_x = new wwwFirstdataCom.RetrieveReferralDefinitionRequestType();
            request_x.sessionId = sessionId;
            return (AsyncWwwFirstdataCom.RetrieveReferralDefinitionResponseTypeFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWwwFirstdataCom.RetrieveReferralDefinitionResponseTypeFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.firstdata.com/RetrieveReferralDefinition',
              'http://www.firstdata.com',
              'RetrieveReferralDefinition',
              'http://www.firstdata.com',
              'RetrieveReferralDefinitionResponse',
              'wwwFirstdataCom.RetrieveReferralDefinitionResponseType'}
            );
        }
        public AsyncWwwFirstdataCom.RetrieveReferralResponseTypeFuture beginRetrieveReferral(System.Continuation continuation,String sessionId,Integer id) {
            wwwFirstdataCom.RetrieveReferralRequestType request_x = new wwwFirstdataCom.RetrieveReferralRequestType();
            request_x.sessionId = sessionId;
            request_x.id = id;
            return (AsyncWwwFirstdataCom.RetrieveReferralResponseTypeFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWwwFirstdataCom.RetrieveReferralResponseTypeFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.firstdata.com/RetrieveReferral',
              'http://www.firstdata.com',
              'RetrieveReferral',
              'http://www.firstdata.com',
              'RetrieveReferralResponse',
              'wwwFirstdataCom.RetrieveReferralResponseType'}
            );
        }
        public AsyncWwwFirstdataCom.LoginResponseTypeFuture beginLogin(System.Continuation continuation,String domain,String username,String password) {
            wwwFirstdataCom.LoginRequestType request_x = new wwwFirstdataCom.LoginRequestType();
            request_x.domain = domain;
            request_x.username = username;
            request_x.password = password;
            return (AsyncWwwFirstdataCom.LoginResponseTypeFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWwwFirstdataCom.LoginResponseTypeFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.firstdata.com/Login',
              'http://www.firstdata.com',
              'Login',
              'http://www.firstdata.com',
              'LoginResponse',
              'wwwFirstdataCom.LoginResponseType'}
            );
        }
        public AsyncWwwFirstdataCom.CreateReferralResponseTypeFuture beginCreateReferral(System.Continuation continuation,String sessionId,wwwFirstdataCom.Referral referral) {
            wwwFirstdataCom.CreateReferralRequestType request_x = new wwwFirstdataCom.CreateReferralRequestType();
            request_x.sessionId = sessionId;
            request_x.referral = referral;
            return (AsyncWwwFirstdataCom.CreateReferralResponseTypeFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWwwFirstdataCom.CreateReferralResponseTypeFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.firstdata.com/CreateReferral',
              'http://www.firstdata.com',
              'CreateReferral',
              'http://www.firstdata.com',
              'CreateReferralResponse',
              'wwwFirstdataCom.CreateReferralResponseType'}
            );
        }
    }
}