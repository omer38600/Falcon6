public class AccountQueueableExample implements Queueable {
    public List<account> listAccount;

    public AccountQueueableExample(List<Account> accList){
        listAccount = accList;
    }

    public void execute(QueueableContext qc){
        for (account a : listAccount) {
            a.Name = a.name + '--SI';
        }
        update listAccount;
    }


    }

