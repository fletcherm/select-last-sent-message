(function() {
  var Mail, SystemEvents, messageViewer, recipient, selectedMessage;

  SystemEvents = Application('System Events');

  Mail = Application('Mail');

  Mail.activate();

  delay(0.5);

  messageViewer = Mail.MessageViewer;

  selectedMessage = messageViewer.selectedMessages[0];

  recipient = selectedMessage.recipients[0];

  console.log(name);

}).call(this);
