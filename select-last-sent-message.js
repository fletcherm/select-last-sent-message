(function() {
  var Mail, sent;

  Mail = Application('Mail');

  sent = Mail.sentMailbox;

  console.log(sent.messages.first.subject());

  console.log(sent.messages.first.open());

}).call(this);
