# Feign

**已自动集成restTemplate ** 

**自动传值并做相应的反序列化**

![1578404012(1)](D:\note\JAVA\Eureka&feigin\1578404012(1).png)

## 使用

- 引入openFeign启动器

- 在引导类上，@EnableFeignClient

- 创建一个接口，在接口添加@FeiginClient

- 在接口中定义一些方法，这些方法的书写方式跟之前controller类似

  

## 例子

![2020-01-07_212317](D:\note\JAVA\Eureka&feigin\2020-01-07_212317.png)

![2020-01-07_212245](D:\note\JAVA\Eureka&feigin\2020-01-07_212245.png)

![1578403841(1)](D:\note\JAVA\Eureka&feigin\1578403841(1).png)

## 熔断和降级

每当20个请求中，有50%失败时，熔断器就会打开，此时再调用此服务，将会直接返回失败，不再调远程服务。直到5s钟之后，重新检测该触发条件，判断是否把熔断器关闭，或者继续打开。

这里面有个很关键点，达到熔断之后，那么后面它就直接不去调该微服务。那么既然不去调该微服务或者调的时候出现异常，出现这种情况首先不可能直接把错误信息传给用户，所以针对熔断

我们可以考虑采取降级策略。所谓降级，就是当某个服务熔断之后，服务器将不再被调用，此时客户端可以自己准备一个本地的fallback回调，返回一个缺省值。 

这样做，虽然服务水平下降，但好歹可用，比直接挂掉要强，当然这也要看适合的业务场景。