(function() {
  var Mail, SystemEvents, i, j, upArrow, wait;

  wait = function() {
    return delay(0.1);
  };

  SystemEvents = Application('System Events');

  Mail = Application('Mail');

  Mail.activate();

  wait();

  SystemEvents.keystroke('3', {
    using: 'command down'
  });

  wait();

  upArrow = '126';

  SystemEvents.keystroke(upArrow, {
    using: ['control down', 'option down']
  });

  for (i = j = 0; j <= 100; i = ++j) {
    SystemEvents.keyCode(upArrow);
  }

  wait();

  SystemEvents.keystroke('k', {
    using: ['control down', 'option down', 'command down']
  });

  wait();

}).call(this);
