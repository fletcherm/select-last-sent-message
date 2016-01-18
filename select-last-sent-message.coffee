SystemEvents = Application('System Events')
Mail = Application('Mail')

Mail.activate()
delay(0.5)

SystemEvents.keystroke('3', using: 'command down')
delay(0.5)

# OMG this is gross, but right now I can't figure out
# any other way to select the most recently sent message :(
# Maybe we can look it up via the Mail api (see notes below)
# and then use SystemEvents to select it?
upArrow = 126
SystemEvents.keyCode(upArrow) for i in [0..100]
delay(0.5)

SystemEvents.keystroke('k', using: ['control down', 'option down', 'command down' ])
delay(0.5)

leftArrow = 123
SystemEvents.keyCode(leftArrow)
delay(0.5)

# Brute force; may be better to invoke TextExpander directly
SystemEvents.keystroke(';')
SystemEvents.keystroke('f')
SystemEvents.keystroke('u')
SystemEvents.keystroke('w')
SystemEvents.keystroke(' ')

# Next steps - 
# Look at first recipient of the message
# Parse out the first name
# Include it after the ';fuw' from above
# e.g. when done it should look like -
# Follow up with Adam - Invoices for XYZ

# Scraps and notes below
#
# messageViewer = Mail.MessageViewer
# selectedMessage = messageViewer.selectedMessages[0]
# recipient = selectedMessage.recipients[0]
# console.log name



# sent = Mail.mailboxes.whose(name: 'Sent')
# console.log sent.length
#
# console.log box.name() for box in Mail.mailboxes
# sent = Mail.sentMailbox
# console.log sent.messages.first.subject()
# console.log sent.messages.first.open()

# next time ... two approaches
# Figure out how to create a task in OmniFocus & populate with message content
# Maybe go through pasteboard will bring more info over? (found allusion to this
# in OmniFocus docs)
# Hopefully more info on creating objects here :
# https://developer.apple.com/library/mac/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/OSX10-10.html#//apple_ref/doc/uid/TP40014508-CH109-SW1
#
# May be easier to use Mail + SystemEvents to click menu icons and send key presses
# e.g. use menu items (command-3) to select Sent mailbox
# then send key command for clip-o-tron
# maybe can injust Follow up with at the beginning of the task content?
# more info on sending key commands here :
# https://github.com/dtinth/JXA-Cookbook/wiki/System-Events
