@IsTest
private class EmailApprovalHandlerTest {
	
    @IsTest
    static void testEmailApprovalHandler() {
        Messaging.InboundEmail email = new Messaging.InboundEmail() ;
        Messaging.InboundEnvelope env    = new Messaging.InboundEnvelope();
        email.subject = 'Create Contact';
        email.plainTextBody = 'FromEmail';
        env.fromAddress = 'vmsreply@salesforce.com';
        EmailApprovalHandler vmsService = new EmailApprovalHandler();
        vmsService.handleInboundEmail(email, env );
    }
}