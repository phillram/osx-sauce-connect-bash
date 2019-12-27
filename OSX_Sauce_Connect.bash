#!/bin/bash

ulimit -n 8000

~/Sauce\ Connect/4.5.4/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --tunnel-identifier="US VDC Latest" \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/us_vdc_latest.pid \
    --logfile ~/Sauce\ Connect/logs/us_vdc_latest.log &

~/Sauce\ Connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --tunnel-identifier="US VDC Prior" \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/us_vdc_one_prior.pid \
    --logfile ~/Sauce\ Connect/logs/us_vdc_one_prior.log &

~/Sauce\ Connect/4.5.4/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --tunnel-identifier="EU VDC Latest" \
    --rest-url https://eu-central-1.saucelabs.com/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/eu_vdc_latest.pid \
    --logfile ~/Sauce\ Connect/logs/eu_vdc_latest.log &

~/Sauce\ Connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --tunnel-identifier="EU VDC Prior" \
    --rest-url https://eu-central-1.saucelabs.com/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/eu_vdc_one_prior.pid \
    --logfile ~/Sauce\ Connect/logs/eu_vdc_one_prior.log &

~/Sauce\ Connect/4.5.4/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_RDC_APIKEY \
    --tunnel-identifier="US RDC Latest" \
    --rest-url https://us1.api.testobject.com/sc/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/us_rdc_latest.pid \
    --logfile ~/Sauce\ Connect/logs/us_rdc_latest.log &

~/Sauce\ Connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_RDC_APIKEY \
    --tunnel-identifier="US RDC Prior" \
    --rest-url https://us1.api.testobject.com/sc/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/us_rdc_one_prior.pid \
    --logfile ~/Sauce\ Connect/logs/us_rdc_one_prior.log &

~/Sauce\ Connect/4.5.4/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_RDC_APIKEY \
    --tunnel-identifier="EU RDC Latest" \
    --rest-url https://eu1.api.testobject.com/sc/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/eu_rdc_latest.pid \
    --logfile ~/Sauce\ Connect/logs/eu_rdc_latest.log &

~/Sauce\ Connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_RDC_APIKEY \
    --tunnel-identifier="EU VDC Prior" \
    --rest-url https://eu1.api.testobject.com/sc/rest/v1 \
    --se-port 0 \
    --pidfile ~/Sauce\ Connect/pid/eu_rdc_one_prior.pid \
    --logfile ~/Sauce\ Connect/logs/eu_rdc_one_prior.log &

wait
