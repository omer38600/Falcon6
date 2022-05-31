public class AccountInfo {

    public static void ShowAccounts() {

        date close = date.today();

        List<Account> accWopp = [select name, id, ( select name, id from Opportunities where CloseDate>: close ) from Account];

        System.debug(accWopp);


    }
}
