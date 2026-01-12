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

    //Whenever the account is updated and rating is hot then directly cold nhi hoga warm hona hi pdega

    public static void updateRating(List<Account> newAcc, Map<Id, Account> oldRec){

        for(Account acc : newAcc){
            Account oldRating = oldRec.get(acc.Id);
            if(oldRating.Rating == 'Cold' && acc.Rating == 'Hot'){
                acc.Rating.addError('Hey Warm bhool gye kya');
            }
        }
    }

    //Whenever Account is inserted and the annual revenue is empty then sets its value to zero

    public static void setAccountRevenue(List<Account> accList){
        for(Account acc : accList){
            if(acc.AnnualRevenue == null){
                acc.AnnualRevenue = 0;
            }
        }
    }

    // Account update par Industry = “Technology” ho to Type = “Customer” set karo.

    public static void setType(List<Account> accList){

        for(Account acc : accList){
            if(acc.Industry == 'Technology'){
                acc.Type = 'Customer';
            }
        }
    }
}