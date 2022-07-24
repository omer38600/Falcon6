public with sharing class AssignmentCallout {

    public static HttpResponse fetchData() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures=Population');
        request.setMethod('GET');

        //2. prepare http
        Http http = new http();

         //3. send request, receive response
         HttpResponse response = http.send(request);
         system.debug('status ' + response.getStatus());
         system.debug('status code ' + response.getStatusCode());

          //4. process the response
        if (response.getStatusCode() == 200) {
            string dataJSON = response.getBody();
            system.debug(dataJSON);

            Map<string, object> results = (Map<string, object>)JSON.deserializeUntyped(dataJSON);
            system.debug('results = ' + results);

            List<object> Data = (List<object>)results.get('data');
            system.debug('======object for data list START=====');
            for (object d : Data) {
                system.debug(d);
            }
            system.debug('======object DAta list END=====');
        } else {
            system.debug('something went wrong people');
        }
        return response;
}
}