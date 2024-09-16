# #! /bin/bash
echo "Chaincode Deployment Flow OrgS"
peer lifecycle chaincode package simple_chaincode.tar.gz --path ../lfd272/chaincodes/simple_chaincode --lang node --label simple_chaincode_1.0
peer lifecycle chaincode install simple_chaincode.tar.gz
