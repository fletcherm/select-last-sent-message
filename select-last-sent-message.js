(function() {
  var Mail, SystemEvents, leftArrow, upArrow;

  SystemEvents = Application('System Events');

  Mail = Application('Mail');

  Mail.activate();

  delay(0.5);

  SystemEvents.keystroke('3', {
    using: 'command down'
  });

  delay(0.5);

  upArrow = 126;

  SystemEvents.keystroke(upArrow, {
    using: ['control down', 'option down']
  });

  delay(0.5);

  SystemEvents.keystroke('k', {
    using: ['control down', 'option down', 'command down']
  });

  delay(0.5);

  leftArrow = 123;

  SystemEvents.keyCode(leftArrow);

  delay(0.5);

  SystemEvents.keystroke(';');

  SystemEvents.keystroke('f');

  SystemEvents.keystroke('u');

  SystemEvents.keystroke('w');

  SystemEvents.keystroke(' ');

}).call(this);
