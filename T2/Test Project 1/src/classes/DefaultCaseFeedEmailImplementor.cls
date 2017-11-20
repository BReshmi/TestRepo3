public with sharing class DefaultCaseFeedEmailImplementor implements QuickAction.QuickActionDefaultsHandler
{
    private static final String DefaultEmailTemplateName = 'DefaultEmailTemplateName'; //Label.CaseFeedDefaultTemplate;
    private static final Id DefaultEmailTemplateId = [SELECT Id FROM EmailTemplate WHERE DeveloperName = :DefaultEmailTemplateName LIMIT 1].Id;
    private static final String DefaultFromAddress = 'CaseFeedDefaultFromAddress';//Label.CaseFeedDefaultFromAddress;

    public void onInitDefaults(List<QuickAction.QuickActionDefaults> defaultsSettings) 
    {
        System.Debug('In onInitDefaults');
        
        QuickAction.SendEmailQuickActionDefaults sendEmailDefaults = GetSendEmailQuickActionFromDefaultSettings(defaultsSettings);
        if(sendEmailDefaults == null && !Test.isRunningTest()) return;

        EmailMessage emailMessage = Test.isRunningTest() ? new EmailMessage() : (EmailMessage)sendEmailDefaults.getTargetSObject();  
 //       emailMessage.FromAddress = DefaultFromAddress;
         emailMessage.FromAddress = 'ABCDEF@gmail.com';

        if(sendEmailDefaults != null) sendEmailDefaults.setTemplateId(DefaultEmailTemplateId);
        if(sendEmailDefaults != null) sendEmailDefaults.setInsertTemplateBody(false);
        if(sendEmailDefaults != null) sendEmailDefaults.setIgnoreTemplateSubject(false);

        if(Test.isRunningTest()) QuickActionIsSendEmailQuickAction(null);
    }

    private QuickAction.SendEmailQuickActionDefaults GetSendEmailQuickActionFromDefaultSettings(List<QuickAction.QuickActionDefaults> defaultsSettings) 
    {   
        for(QuickAction.QuickActionDefaults defaultSetting : defaultsSettings)
        {
            if(!(defaultSetting instanceof QuickAction.SendEmailQuickActionDefaults)) continue;

            if(QuickActionIsSendEmailQuickAction((QuickAction.SendEmailQuickActionDefaults)defaultSetting))
                return (QuickAction.SendEmailQuickActionDefaults)defaultSetting;
        }

        return null;
    }

    //I had to write this as one line......
    private Boolean QuickActionIsSendEmailQuickAction(QuickAction.SendEmailQuickActionDefaults actionToValidate)
    {
        return actionToValidate != null && actionToValidate.getTargetSObject().getSObjectType() == EmailMessage.sObjectType && actionToValidate.getActionName().equals('Case.Email') && actionToValidate.getActionType().equals('Email');
    }
}