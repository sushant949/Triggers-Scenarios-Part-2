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
    
    // Whenever Account is inserted set the rating of an account to Warm if rating is blank

    public static void setAccountRatingWarm(List<Account> accList){

        for(Account acc : accList){
            if(acc.Rating == null){
                acc.Rating = 'Warm' ;
            }
        }
    }
    // Whenever account is inserted if billing country is India then set the Description to Country is India

    public static void setBillingState(List<Account> accList){

        for(Account acc : accList){
            if(acc.BillingCountry == 'India'){
                acc.Description = 'The billing country is India....';
            }
        }
    }

    //Whenever account is updated and the name is changed than display "Account name gets changed" in description

    public static void setDescriptionValue(List<Account> new_accList , Map<Id, Account> oldRec){

        for(Account acc : new_accList){
            Account oldRecordId = oldRec.get(acc.Id);
            if(acc.Name != oldRecordId.Name){
                acc.Description = 'Account name is changed....😊😊😊😊😊';
            }
        }
    }
}