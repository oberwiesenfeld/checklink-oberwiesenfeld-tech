# Check Link Utility [![Build Status](https://travis-ci.org/oberwiesenfeld/checklink-oberwiesenfeld-tech.png)](https://travis-ci.org/oberwiesenfeld/checklink-oberwiesenfeld-tech)

Run a check to find broken links by means of a docker container build from [W3C link-checker](https://github.com/w3c/link-checker).
The report is written to a sub directory called results. It contains the html report of the test run.

```bash
./checklink-oberwiesenfeld-tech.sh
```

In OS-X environments the result file is opened automatically after the rest run.

## Return values

The script `checklink-oberwiesenfeld-tech.sh` returns 
- 1 : if broken links are present
- 0 : if no broken links are present
