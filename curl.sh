#!/bin/bash

# Contract verification API docs https://docs.blockscout.com/devs/verification/blockscout-smart-contract-verification-api#via-standard-json-input

curl -v -X POST "https://piccadilly.autonity.org/api/v2/smart-contracts/0x8ad114bFa6616886E84900549C8Df59C58bA4725/verification/via/standard-input" \
  --header 'Content-Type: multipart/form-data' \
  --form 'compiler_version=v0.8.26+commit.8a97fa7a' \
  --form 'is_optimization_enabled=false' \
  --form 'autodetect_constructor_args=false' \
  --form 'constructor_args=000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000000c0000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000003635c9adc5dea000000000000000000000000000000000000000000000000000000000000000000008444556546f6b656e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034445560000000000000000000000000000000000000000000000000000000000' \
  --form 'license_type=mit' \
  --form 'files[0]=@verification_payload.json;type=application/json'
