on run {targetBuddyPhone, targetMessage}
    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy targetBuddyPhone of targetService
        send targetMessage to targetBuddy
    end tell
end run



-- tell application "Messages"

--     #set targetBuddy to "+19403909446"
--     #set targetBuddy to "patrick@infranet.com"
--     #set targetBuddy to "pmsteil@icloud.com"
--     #set targetBuddy to "+449402495631"
--     #set targetBuddy to "+1449408003974"
--     set targetBuddy to "+449408003974"
--     #set targetBuddy to "+1(940) 800-3974"

--     set targetService to id of 1st service whose service type = iMessage

--     repeat

--         set textMessage to "Hi there from macOS!"

--         set theBuddy to buddy targetBuddy of service id targetService
--         send textMessage to theBuddy

--         delay (random number from 1 to 5)

--     end repeat

-- end tell