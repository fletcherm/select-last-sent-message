wait = -> delay(0.1)

SystemEvents = Application('System Events')
Mail = Application('Mail')

Mail.activate()
wait()

SystemEvents.keystroke('3', using: 'command down')
wait()

upArrow = '126'
# Umm why the fuck doesn't this work? It works in the gui...
SystemEvents.keystroke(upArrow, using: ['control down', 'option down'])
# let's brute force instead
SystemEvents.keyCode(upArrow) for i in [0..100]
wait()

SystemEvents.keystroke('k', using: ['control down', 'option down', 'command down' ])
wait()
#
# leftArrow = 123
# SystemEvents.keyCode(leftArrow)
# delay(0.5)
#
# # Brute force; may be better to invoke TextExpander directly
# SystemEvents.keystroke(';')
# SystemEvents.keystroke('f')
# SystemEvents.keystroke('u')
# SystemEvents.keystroke('w')
# SystemEvents.keystroke(' ')

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
