# #! /bin/bash
echo "Approve Chaincode Definition OrgS"
echo "Package ID?"
read packageID
export PACKAGE_ID= $packageID
peer lifecycle chaincode approveformyorg -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --channelID mychannel --name simple_chaincode --version 1.0 --package-id $PACKAGE_ID --sequence 1 --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
