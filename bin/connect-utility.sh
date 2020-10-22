servername=utility
serverinstance=i-034ed5813993d4fff
serverip=52.73.109.234
timer=60

clear
echo Starting the $servername instance
aws ec2 start-instances --output table --instance-ids $serverinstance

echo Waiting $timer seconds for server to come up, or press any key to continue...
read -t $timer -n 1




echo Associating the correct IP
aws ec2 associate-address --output table --instance-id $serverinstance --public-ip $serverip


#then connect to the server
echo connecting to $servername on $serverip
ssh ec2-user@$serverip -i ~/.ssh/ngschef.pem


bin/stop-server.sh $serverinstance

