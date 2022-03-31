#!/bin/bash

cd components/azure-sdk-for-c-arduino && \
git am ../../patch/0001-Add-component.mk-to-azure-sdk-for-c-arduino.patch && \
cd ../..
