# ergo-rpi-node-logs

> Work in progress

The Ergo node completes a full sync in 3 separate stages: `headers`, `node`, and `wallet`.

Since the node sync phase is the most time consuming part of the process, the goal of this repo is to track and compare node sync durations over time. With this data we can benchmark each version, estimate time to sync for an RPi, identify optimal configurations, shed light on issues, and more. 

## DIY analysis

### Retrieve & process log files

> Self note: break out bash script 1) retrieve and 2) process

```bash
bash runner-logs.sh 
```

Enter your `node IP address` and `node logs directory` when prompted.

### Compute results

You'll need the [R](https://www.r-project.org/) statistical computing language and a few packages: `tidyverse`, `lubridate`, `scales`, `data.table`.

```r
Rscript logs-comparo.R 
```


