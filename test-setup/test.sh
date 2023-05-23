#!/bin/sh

printf "***************** Metrics Endpoint *****************\n"
printf "curl 0.0.0.0:9053/metrics\n"
printf "Expect results: Expect to see prometheus metrics\n"
curl 0.0.0.0:9053/metrics

printf "\n\n***************** Health Endpoint *****************\n"
printf "curl 0.0.0.0:8053/health\n"
printf "Expect results: Expect to see OK\n"
curl 0.0.0.0:8053/health

printf "\n\n***************** Scoped Query *****************\n"
printf "Running: dig @127.0.0.1 -p 10053 test.test.local\n"
printf "Expect results: 127.0.0.1 and 127.0.1.1\n"
dig @127.0.0.1 -p 10053 test.test.local

printf "\n\n***************** Out of Scope Query *****************\n"
printf "Running: dig @127.0.0.1 -p 10053 www.google.com\n"
printf "Expect results: Some result from Google's dns server\n"
dig @127.0.0.1 -p 10053 www.google.com