public class AnimalLocator {
    Public static String getAnimalNameById(Integer Id)
    { 
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody()); 
            Map<String, Object> animal = (Map<String, Object>)results.get('animal');                         

            return (string.valueof(animal.Get('name')));        
    	
	}
}