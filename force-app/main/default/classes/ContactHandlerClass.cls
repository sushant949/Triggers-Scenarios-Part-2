public with sharing class ContactHandlerClass {
    
    //Whenever contact is inserted make sure that last name is mandatory

    public static void lastNameMandatory(List<Contact> conList){

        for(Contact con : conList){
            if(con.LastName == null){
                con.addError('You can not create a contact without the last name....');
            }
        }
    }

    //Whenever contact is inserted if the email is blank show an error


    public static void showContactError(List<Contact> conList){
        for(Contact con : conList){
            if(con.Email == null){
                con.Email.addError('Make sure that email is not empty');
            }
        }
    }

    //Whenever Contact is created give contact is created as a text in description

    public static void updateDescription(List<Contact> conList){
        for(Contact con : conList){
            if(con.Description == null){
                con.Description = 'Hurrah😍😍!!!Contact is created!!!!😊😊😊😊😊😊';
            }
        }
    }

    //Whenever contact is updated if phone is blank then show an error

    public static void showErrorWhenPhoneUpdated(List<Contact> conList){
        for(Contact con : conList){
            if(con.Phone == null){
                con.Phone.addError('You can not update a record if Phone field is blank');
            }
        }
    }

//Whenever contact is updated update the description to contact record is updated


}