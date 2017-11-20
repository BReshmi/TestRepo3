trigger AccountTrigger on Account (after insert) {
    if(Trigger.isBefore || Trigger.isAfter && Trigger.isInsert)
	AccountTriggerHandler.CreateAccounts(Trigger.New);
}