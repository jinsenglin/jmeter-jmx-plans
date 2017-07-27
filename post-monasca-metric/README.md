# jmeter-jmx-plans

Example

* Start in non-GUI mode
* Save result data log as result.jtl file

```
jmeter -t "One Thread One Sampler Test Plan.jmx" -n -l result.jtl -Jp.target.server=www.example.com -Jp.target.server.port=8070 -Jp.keystone.auth.token=27feed73a0ce4138934e30d619b415b0
```

Result

```
timeStamp,elapsed,label,responseCode,responseMessage,threadName,dataType,success,failureMessage,bytes,sentBytes,grpThreads,allThreads,Latency,IdleTime,Connect
1501057182180,3164,HTTP Request,200,OK,Thread Group 1-1,text,true,,11559,273,1,1,3104,0,3080
```

Note

* Use issue-token.sh to issue a new keystone auth token
