public class AccountCreation {
    public static void newAccountRecords() {
        try{
        List<Account> accList= new List<Account>();
        for( Integer i=0 ; i<20 ; i++ ) {
            Account acc=new Account();
            acc.Name = 'Anuj'+i;
            acc.AccountNumber = '12345'+i;
            acc.Fax = '123cloudanalogy';
            acc.Phone = '992211'+i;
            acc.Website='https://trailhead.salesforce.com/content/learn/modules/app-development-without-limits/app-development-without-limits-rate';
            accList.add(acc);
        }
        if(accList.size() > 0) {
            insert  accList;
        }
    }
    catch(Exception ex){
        system.debug('Exception_Line_No--->'+ex.getLineNumber());
        system.debug('Exception_Message--->'+ex.getMessage());
    }
    }
}