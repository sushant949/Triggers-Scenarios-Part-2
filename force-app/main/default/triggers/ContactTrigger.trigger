trigger ContactTrigger on Contact (before insert) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            ContactHandlerClass.lastNameMandotory(Trigger.new);
        }
    }

}