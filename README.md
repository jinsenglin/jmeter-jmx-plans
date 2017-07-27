# jmeter-jmx-plans

Example

* Start in non-GUI mode
* Save result data log as result.jtl file

```
jmeter -t "One Thread One Sampler Test Plan.jmx" -n -l result.jtl -Jp.target.server=www.example.com
```

Result

```
timeStamp,elapsed,label,responseCode,responseMessage,threadName,dataType,success,failureMessage,bytes,sentBytes,grpThreads,allThreads,Latency,IdleTime,Connect
1501057182180,3164,HTTP Request,200,OK,Thread Group 1-1,text,true,,11559,273,1,1,3104,0,3080
```

---

Example

* Start in non-GUI mode
* Save result data log as result.jtl file
* Generate one minute loading

```
jmeter -t "One Thread N Sampler One Minute Test Plan.jmx" -n -l result.jtl -Jp.target.server=www.example.com
```

Note

* Use Test Plan > Thread Group :: Loop Count :: Forever
* Use Test Plan > Thread Group :: Scheduler :: Duration :: 60

---

Example

* Start in non-GUI mode
* Save result data log as result.jtl file
* Generate one minute loading
* Control sampler rate with one sampler per second

```
jmeter -t "One Thread One Sampler Per Second One Minute Test Plan.jmx" -n -l result.jtl -Jp.target.server=www.example.com
```

Note

* Use Test Plan > Thread Group > Timer :: jp@gc - Throughput Shaping Timer :: (1,1,60)

---

Example

* Start in GUI mode
* Generate one minute loading
* Watch CPU utilization
* Watch sampler throughput

```
jmeter -t "PerfMon One Thread N Sampler One Minute Test Plan.jmx" -Jp.target.server=www.example.com -Jp.target.server.port=8080
```

Note

* Use Test Plan > Thread Group :: Loop Count :: Forever
* Use Test Plan > Thread Group :: Scheduler :: Duration :: 60
* Use Test Plan > Thread Group > Listener :: jp@gc - PerfMon Metrics Collector
* Use Test Plan > Thread Group > Listener :: jp@gc - Transactions per Second
* Use Test Plan > Thread Group > Listener :: jp@gc - Hits per Second
* Listener :: Settings :: Rendering :: Limit 10 points (This setting is no going to be saved in the .jmx file. Need configure it manually everytime.)

