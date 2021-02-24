#usage
#   ~/bin/start-server.sh servername serverinstance serverip

servername=$1
serverinstance=$2
serverip=$3
timer=60

echo "Starting server: $servername - $serverinstance - $serverip"
aws ec2 start-instances --output table --instance-ids $serverinstance

echo Waiting $timer seconds for server to come up, or press any key to continue...
read -t $timer -n 1

echo Associating the correct IP
aws ec2 associate-address --output table --instance-id $serverinstance --public-ip $serverip
