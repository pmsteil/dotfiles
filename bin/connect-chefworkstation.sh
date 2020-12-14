# chmod 400 ~/.ssh/ngschef.pem
# ssh root@52.203.156.160 -i ~/.ssh/ngschef.pem

start-server.sh chef-workstation i-8e0a8fdd 75.101.155.241

ssh root@75.101.155.241 -i ~/.ssh/ngschef.pem
