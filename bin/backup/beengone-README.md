beengone - check length of computer idle time

By Brett Terpstra, released to the public domain in binary form

`beengone` is a command-line utility for OS X which tests whether the computer has been idle (no mouse or keyboard input) for a given number of minutes. Any positive number may be passed to it, and it will respond with "true" and a 0 exit code if the computer has been idle for that number of minutes. If there has been any input within the time period specified, it will output "false" and a non-zero exit code.

I threw `beengone` together because I wanted a script to be able to check for my own presence at my machine when it finished, and if I'd been gone for more than 5 minutes send myself a text or push notification instead of a Growl message. 

This utility uses I/O Kit and is based on code [shared by Jean-David Gadina][1].

[1]: http://www.eosgarden.com/en/articles/iokit-idle/