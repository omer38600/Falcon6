public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
        
    public void printCandidateInfo() {

        System.debug('Candidate name is '+ name + '(' + gender + ')' );
        System.debug('Company name is ' + companyName);

    }

    public static void printCandidateInfoSt(){
        System.debug('Company name is '+ companyName);
        System.debug('Name; '+ name);

    }

}
