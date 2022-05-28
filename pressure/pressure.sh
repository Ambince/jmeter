#!/bin/bash
rm -rf report/*
rm -rf result/*
rm -rf jmeter.log

jmeter -n -t ./unit/Admin-API.jmx -l  ./result/admin-api.jtl -e -o ./report



