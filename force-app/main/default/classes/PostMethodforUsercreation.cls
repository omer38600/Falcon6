public with sharing class PostMethodforUsercreation {
    public static HttpResponse postUserCreation() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('POST');
        string namejob =  '{"name": "Testing",   "job": "Software"}' ;
        request.setBody(namejob);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            system.debug('response ' + response.getBody());

          // alternatively  Object ob = JSON.deserializeUntyped(response.getBody());
          // gives an object and 
             
                Map<string, object> results = (Map<string, 
                object>)JSON.deserializeUntyped(response.getBody());

            system.debug(results);
            System.debug(results.get('name'));
           
        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;

}

    }
