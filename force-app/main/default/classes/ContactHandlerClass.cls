public with sharing class ContactHandlerClass {
    
    //Whenver account is inserted make sure that last name is mandatory

    public static void lastNameMandotory(List<Contact> conList){

        for(Contact con : conList){
            if(con.LastName == null){
                con.addError('You can not create a contact without the last name....');
            }
        }
    }
}