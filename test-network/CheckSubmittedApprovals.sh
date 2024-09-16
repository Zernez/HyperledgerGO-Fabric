# #! /bin/bash
echo "Check Submitted Approvals"
peer lifecycle chaincode checkcommitreadiness --channelID mychannel --name simple_chaincode --version 1.0 --sequence 1 --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem --output json {"approvals": {"Org1MSP": true,"Org2MSP": true}}
