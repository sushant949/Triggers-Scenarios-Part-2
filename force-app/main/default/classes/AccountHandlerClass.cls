public with sharing class AccountHandlerClass {
    // Whenever account is inserted.. Convert the name to upper case

    public static void nameInUpperCase(List<Account> accList){
        for(Account acc : accList){
            acc.Name = acc.Name.toUpperCase();
        }
    }
}