chefinstance=$1
timer=10

clear
echo Stopping the $chefinstance instance in $timer seconds, or press ENTER to stop now

read -t $timer -n 1
aws ec2 stop-instances --output table --instance-ids $chefinstance

