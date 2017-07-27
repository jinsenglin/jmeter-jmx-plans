# jmeter-jmx-plans

Example

* Start in non-GUI mode
* Save result data log as result.jtl file

```
jmeter -t "One Thread One Sampler One Metric Test Plan.jmx" -n -l result.jtl -Jp.target.server=www.example.com -Jp.target.server.port=8070 -Jp.keystone.auth.token=27feed73a0ce4138934e30d619b415b0
```

Result

```
timeStamp,elapsed,label,responseCode,responseMessage,threadName,dataType,success,failureMessage,bytes,sentBytes,grpThreads,allThreads,Latency,IdleTime,Connect
1501132808155,89,HTTP Request,204,No Content,Thread Group 1-1,text,true,,219,485,1,1,0,0,58
```

Note

* Use issue-token.sh to issue a new keystone auth token
