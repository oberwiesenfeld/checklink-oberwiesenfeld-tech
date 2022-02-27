[![RunLinkCheck](https://github.com/oberwiesenfeld/checklink-oberwiesenfeld-tech/actions/workflows/run-link-check.yml/badge.svg)](https://github.com/oberwiesenfeld/checklink-oberwiesenfeld-tech/actions/workflows/run-link-check.yml)  [![Build Status](https://travis-ci.org/oberwiesenfeld/checklink-oberwiesenfeld-tech.png)](https://travis-ci.org/oberwiesenfeld/checklink-oberwiesenfeld-tech) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
# Check Link Utility 
Run a check to find broken links by means of a docker container build from [W3C link-checker](https://github.com/w3c/link-checker).
The report is written to a sub directory called results. It contains the html report of the test run.

```bash
./checklink-oberwiesenfeld-tech.sh
```

In OS-X environments the result file is opened automatically after the test run.

## Script Return Values

The script `checklink-oberwiesenfeld-tech.sh` returns 
- 1 : if broken links are present
- 0 : if no broken links are present

## Maven 

A Maven interface is included.

### Run the Checklink Test by means of Maven
```bash
mvn test
```

### Clean 
All local results older than 30 days are removed. 
```bash
mvn clean
```
