public class EmailApprovalHandler implements Messaging.InboundEmailHandler {
	public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        String subToCompare = 'Create Contact';
        System.debug('Received Email with Subject => '+ email.subject + ' with body => '+ email.plainTextBody);
        /*
        if(email.subject.equalsIgnoreCase(subToCompare)) {
            
            if(email!=null && email.textAttachments!=null)
            {
             	for (Messaging.Inboundemail.TextAttachment tAttachment : email.textAttachments) {
            		Attachment attachment = new Attachment();
            		attachment.Name = tAttachment.fileName;
            		attachment.Body = Blob.valueOf(tAttachment.body);
            		attachment.ParentId = c.Id;
            		insert attachment;
            	}   
            }
            if(email!=null && email.binaryAttachments!=null) {
            	for (Messaging.Inboundemail.BinaryAttachment bAttachment : email.binaryAttachments) {
            		Attachment attachment = new Attachment();
                	attachment.Name = bAttachment.fileName;
					attachment.Body = bAttachment.body;
            		attachment.ParentId = c.Id;
            		insert attachment;
            	}
            }
    	}
		*/
    	result.success = true;
        return result;
    }
}