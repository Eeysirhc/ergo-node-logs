# ergo-rpi-node-logs

The Ergo node completes a full sync in 3 separate stages: `headers`, `node`, and `wallet`.

Since the node sync phase is the most time consuming part of the process, the goal of this repo is to track and compare node sync durations over time. With this data we can benchmark each version, estimate time to sync for an RPi, identify optimal configurations, shed light on issues, and more. 

> Note: this is a companion repo to the primary [ergo-rpi](https://github.com/Eeysirhc/ergo-rpi) setup guides.

## DIY analysis

### Optional: retrieve log files

Use this if you are running headless RPi.

```bash
bash logs-get.sh
```

Enter your `node IP address` and `node logs directory` when prompted.

### Process log files 

```bash
bash logs-process.sh
```

### Compute results

You'll need the [R](https://www.r-project.org/) statistical computing language and a few packages: `tidyverse`, `lubridate`, `scales`, `data.table`.

```r
Rscript logs-comparo.R 
```

The `.png` file is dropped into the `/img` folder.