
/* applescript */
set dFolder to "~/Desktop/screencapture/"

do shell script ("mkdir -p " & dFolder)

set i to 0
repeat 960 times
	do shell script ("screencapture " & dFolder & "frame-" & i & ".png")
	delay 30 -- Wait for 30 seconds.
	set i to i + 1
end repeat








bash:


screencapture -m -P -tjpg -r ./test.jpg


