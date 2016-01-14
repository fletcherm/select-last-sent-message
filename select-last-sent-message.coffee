Mail = Application('Mail')
# sent = Mail.mailboxes.whose(name: 'Sent')
# console.log sent.length
#
# console.log box.name() for box in Mail.mailboxes
sent = Mail.sentMailbox
console.log sent.messages.first.subject()
console.log sent.messages.first.open()

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
