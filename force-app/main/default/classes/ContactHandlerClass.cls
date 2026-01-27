public with sharing class ContactHandlerClass {
    
    //Whenever contact is inserted make sure that last name is mandatory

    public static void lastNameMandatory(List<Contact> conList){

        for(Contact con : conList){
            if(con.LastName == null){
                con.addError('You can not create a contact without the last name....');
            }
        }
    }
}