public with sharing class AccountHandlerClass {
    // Whenever account is inserted.. Convert the name to upper case
    
    public static void nameInUpperCase(List<Account> accList){
        for(Account acc : accList){
            acc.Name = acc.Name.toUpperCase();
        }
    }
    
    //Whenever Account is inserted set industry to Technology If industry field is blank
    
    public static void setIndustryToIt(List<Account> accList){
        
        for(Account acc : accList){
            {
                if(acc.Industry == null){
                    acc.Industry = 'Technology' ;
                }
            }
            
        }
    }

    // Whenever Account is updated if phone is blank then show an error

    public static void phoneBlankError(List<Account> accList){
        for(Account acc : accList){
            if(acc.Phone == null){
                acc.Phone.addError('Make sure to provide phone number whenever you are updating an records...You can not empty the phone');
            }
        }
    }
    
}