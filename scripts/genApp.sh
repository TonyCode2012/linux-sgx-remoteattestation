#!/bin/bash
basedir=`dirname $0`
basedir=`cd $basedir;pwd`

AppDir=$basedir/../Application
SerDir=$basedir/../ServiceProvider

echo "[INFO] making service provider..."
cd $SerDir
make clean
make

echo "[INFO] making enclave application..."
cd $AppDir
make clean
make SGX_MODE=SIM SGX_PRERELEASE=1
