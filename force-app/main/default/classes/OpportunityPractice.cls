public class OpportunityPractice {
    public static void createAccRecords(id<Account> id) {
        Opportunity o = new Opportunity();
        o.Name = 'Prospecting';
        o.AccountId = id;
        insert o;
        

    }
}
