# 基于SBOM-TOOL工具的Java项目SBOM生成

[sbom-tool](https://github.com/microsoft/sbom-tool)是一款Microsoft开源的高度可扩展的企业级工具，可以为各种工件创建与SPDX2.2兼容的SBOM。

目前v0.2.2版本的sbom-tool生成sbom的必备命令是：
```shell
generate -b <drop path> -bc <build components path> -pn <package name> -pv <package version> -ps <package supplier> -nsb <namespace uri base>
```

参照[官方参数手册](https://github.com/microsoft/sbom-tool/blob/main/docs/sbom-tool-arguments.md)，上述命令参数的含义如下：
- `-b` : 将为其生成清单文件的放置目录的根文件夹
- `-bc` : 包含构建组件和包的文件夹
- `-pn` : 此SBOM表示的包的名称。如果未提供，将尝试从生成此包的构建中推断此名称，如果这也失败，则SBOM生成失败
- `-pv` : 此SBOM表示的包的版本。如果未提供，将尝试从生成此包的构建中推断版本，如果这也失败，则SBOM生成失败
- `-ps` : 此SBOM代表的包的供应商
- `-nsb` : SBOM命名空间URI的基本路径

命令启动工具后，`-b`参数指定的根目录下会创建新的文件夹`_manifest`，内含文件夹`spdx_2.2`，再内含两个文件`manifest.spdx.json`和`manifest.spdx.json.sha256`。

[TOC]

## GitHub Java Top100

1. [java-design-patterns](https://github.com/iluwatar/java-design-patterns)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\java-design-patterns -bc C:\Users\blank\Desktop\SBOM\java-design-patterns -pn java-design-patterns -pv 1.26.0-SNAPSHOT -ps https://github.com/iluwatar/java-design-patterns -nsb https://iluwatar.com
    ```
2. [spring-boot](https://github.com/spring-projects/spring-boot)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\spring-boot -bc C:\Users\blank\Desktop\SBOM\spring-boot -pn spring-boot -pv 3.0.0-SNAPSHOT -ps https://github.com/spring-projects/spring-boot -nsb https://springframework.org
    ```
3. [elasticsearch](https://github.com/elastic/elasticsearch)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\elasticsearch -bc C:\Users\blank\Desktop\SBOM\elasticsearch -pn elasticsearch -pv 1.0-SNAPSHOT -ps https://github.com/elastic/elasticsearch -nsb https://www.elastic.co/products/elasticsearch
    ```
4. [mall](https://github.com/macrozheng/mall)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\mall -bc C:\Users\blank\Desktop\SBOM\mall -pn mall -pv 1.0-SNAPSHOT -ps https://github.com/macrozheng/mall -nsb https://www.macrozheng.com
    ```
5. [interviews](https://github.com/kdn251/interviews)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\interviews -bc C:\Users\blank\Desktop\SBOM\interviews -pn interviews -pv 1.0-SNAPSHOT -ps https://github.com/kdn251/interviews -nsb https://kdn251.com
    ```
6. [Java](https://github.com/TheAlgorithms/Java)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Java -bc C:\Users\blank\Desktop\SBOM\Java -pn Java -pv 1.0-SNAPSHOT -ps https://github.com/TheAlgorithms/Java -nsb https://thealgorithms.com
    ```
7. [RxJava](https://github.com/ReactiveX/RxJava)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\RxJava -bc C:\Users\blank\Desktop\SBOM\RxJava -pn RxJava -pv 3.0.0-SNAPSHOT -ps https://github.com/ReactiveX/RxJava -nsb https://rxjava3.reactivex.io
    ```
8. [guava](https://github.com/google/guava)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\guava -bc C:\Users\blank\Desktop\SBOM\guava -pn guava -pv HEAD-jre-SNAPSHOT -ps https://github.com/google/guava -nsb https://guava.google.com
    ```
9. [retrofit](https://github.com/square/retrofit)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\retrofit -bc C:\Users\blank\Desktop\SBOM\retrofit -pn retrofit -pv 2.10.0-SNAPSHOT -ps https://github.com/square/retrofit -nsb https://retrofit2.squareup.com
    ```
10. [dubbo](https://github.com/apache/dubbo)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\dubbo -bc C:\Users\blank\Desktop\SBOM\dubbo -pn dubbo -pv 3.1.1-SNAPSHOT -ps https://github.com/apache/dubbo -nsb https://dubbo.apache.org
    ```
11. [MPAndroidChart](https://github.com/PhilJay/MPAndroidChart)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\MPAndroidChart -bc C:\Users\blank\Desktop\SBOM\MPAndroidChart -pn MPAndroidChart -pv v3.1.0 -ps https://github.com/PhilJay/MPAndroidChart -nsb https://PhilJay.github.com
    ```
12. [jadx](https://github.com/skylot/jadx)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jadx -bc C:\Users\blank\Desktop\SBOM\jadx -pn jadx -pv v1.4.4 -ps https://github.com/skylot/jadx -nsb https://jadx.skylot.github.com
    ```
13. [zxing](https://github.com/zxing/zxing)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\zxing -bc C:\Users\blank\Desktop\SBOM\zxing -pn zxing -pv 3.5.1-SNAPSHOT -ps https://github.com/zxing/zxing -nsb https://zxing.google.com
    ```
14. [arthas](https://github.com/alibaba/arthas)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\arthas -bc C:\Users\blank\Desktop\SBOM\arthas -pn arthas -pv 3.6.6 -ps https://github.com/alibaba/arthas -nsb https://arthas.taobao.com
    ```
15. [dbeaver](https://github.com/dbeaver/dbeaver)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\dbeaver -bc C:\Users\blank\Desktop\SBOM\dbeaver -pn dbeaver -pv 1.0.0-SNAPSHOT -ps https://github.com/dbeaver/dbeaver -nsb https://dbeaver.jkiss.org
    ```
16. [JCSprout](https://github.com/crossoverJie/JCSprout)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\JCSprout -bc C:\Users\blank\Desktop\SBOM\JCSprout -pn JCSprout -pv 1.0.0-SNAPSHOT -ps https://github.com/crossoverJie/JCSprout -nsb https://interview.crossoverjie.com
    ```
17. [spring-boot-demo](https://github.com/xkcoding/spring-boot-demo)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\spring-boot-demo -bc C:\Users\blank\Desktop\SBOM\spring-boot-demo -pn spring-boot-demo -pv 1.0.0-SNAPSHOT -ps https://github.com/xkcoding/spring-boot-demo -nsb https://xkcoding.com
    ```
18. [fastjson](https://github.com/alibaba/fastjson)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\fastjson -bc C:\Users\blank\Desktop\SBOM\fastjson -pn fastjson -pv 1.2.84-SNAPSHOT -ps https://github.com/alibaba/fastjson -nsb https://fastjson.alibaba.com
    ```
19. [easyexcel](https://github.com/alibaba/easyexcel)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\easyexcel -bc C:\Users\blank\Desktop\SBOM\easyexcel -pn easyexcel -pv 3.1.1 -ps https://github.com/alibaba/easyexcel -nsb https://easyexcel.alibaba.com
    ```
20. [selenium](https://github.com/SeleniumHQ/selenium)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\selenium -bc C:\Users\blank\Desktop\SBOM\selenium -pn selenium -pv 4.4.0 -ps https://github.com/SeleniumHQ/selenium -nsb https://selenium.seleniumhq.org
    ```
21. [EventBus](https://github.com/greenrobot/EventBus)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\EventBus -bc C:\Users\blank\Desktop\SBOM\EventBus -pn EventBus -pv 3.3.1 -ps https://github.com/greenrobot/EventBus -nsb https://eventbus.greenrobot.org
    ```
22. [hutool](https://github.com/dromara/hutool)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\hutool -bc C:\Users\blank\Desktop\SBOM\hutool -pn hutool -pv 5.8.7 -ps https://github.com/dromara/hutool -nsb https://hutool.cn
    ```
23. [spring-cloud-alibaba](https://github.com/alibaba/spring-cloud-alibaba)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\spring-cloud-alibaba -bc C:\Users\blank\Desktop\SBOM\spring-cloud-alibaba -pn spring-cloud-alibaba -pv 2.3.5.RELEASE -ps https://github.com/alibaba/spring-cloud-alibaba -nsb https://spring.io/projects/spring-cloud-alibaba
    ```
24. [xxl-job](https://github.com/xuxueli/xxl-job)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\xxl-job -bc C:\Users\blank\Desktop\SBOM\xxl-job -pn xxl-job -pv 2.4.0-SNAPSHOT -ps https://github.com/xuxueli/xxl-job -nsb https://https://www.xuxueli.com/xxl-job
    ```
25. [gson](https://github.com/google/gson)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\gson -bc C:\Users\blank\Desktop\SBOM\gson -pn gson -pv 2.9.1 -ps https://github.com/google/gson -nsb https://gson.code.google.com
    ```
26. [libgdx](https://github.com/libgdx/libgdx)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\libgdx -bc C:\Users\blank\Desktop\SBOM\libgdx -pn libgdx -pv 1.11.1 -ps https://github.com/libgdx/libgdx -nsb https://gdx.badlogicgames.com
    ```
27. [ExoPlayer](https://github.com/google/ExoPlayer)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\ExoPlayer -bc C:\Users\blank\Desktop\SBOM\ExoPlayer -pn ExoPlayer -pv r2.18.1 -ps https://github.com/google/ExoPlayer -nsb https://exoplayer.android.google.com
    ```
28. [Sentinel](https://github.com/alibaba/Sentinel)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Sentinel -bc C:\Users\blank\Desktop\SBOM\Sentinel -pn Sentinel -pv 1.8.6-SNAPSHOT -ps https://github.com/alibaba/Sentinel -nsb https://sentinel.csp.alibaba.com
    ```
29. [redisson](https://github.com/redisson/redisson)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\redisson -bc C:\Users\blank\Desktop\SBOM\redisson -pn redisson -pv 3.17.7-SNAPSHOT -ps https://github.com/redisson/redisson -nsb https://redisson.org
    ```
30. [flink](https://github.com/apache/flink)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\flink -bc C:\Users\blank\Desktop\SBOM\flink -pn flink -pv 1.17-SNAPSHOT -ps https://github.com/apache/flink -nsb https://flink.apache.org
    ```
31. [jenkins](https://github.com/jenkinsci/jenkins)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jenkins -bc C:\Users\blank\Desktop\SBOM\jenkins -pn jenkins -pv 1.88 -ps https://github.com/jenkinsci/jenkins -nsb https://www.jenkins.io
    ```
32. [mybatis-3](https://github.com/mybatis/mybatis-3)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\mybatis-3 -bc C:\Users\blank\Desktop\SBOM\mybatis-3 -pn mybatis-3 -pv 3.5.12-SNAPSHOT -ps https://github.com/mybatis/mybatis-3 -nsb https://mybatis.org
    ```
33. [graal](https://github.com/oracle/graal)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\graal -bc C:\Users\blank\Desktop\SBOM\graal -pn graal -pv 22.2.0 -ps https://github.com/oracle/graal -nsb https://www.graalvm.org
    ```
34. [HikariCP](https://github.com/brettwooldridge/HikariCP)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\HikariCP -bc C:\Users\blank\Desktop\SBOM\HikariCP -pn HikariCP -pv 5.0.2-SNAPSHOT -ps https://github.com/brettwooldridge/HikariCP -nsb https://hikari.zaxxer.com
    ```
35. [cat](https://github.com/dianping/cat)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\cat -bc C:\Users\blank\Desktop\SBOM\cat -pn cat -pv 4.0-RC1 -ps https://github.com/dianping/cat -nsb https://cat.dianping.com
    ```
36. [java8-tutorial](https://github.com/winterbe/java8-tutorial)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\java8-tutorial -bc C:\Users\blank\Desktop\SBOM\java8-tutorial -pn java8-tutorial -pv 1.0-SNAPSHOT -ps https://github.com/winterbe/java8-tutorial -nsb https://winterbe.com
    ```
37. [Android-CleanArchitecture](https://github.com/android10/Android-CleanArchitecture)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Android-CleanArchitecture -bc C:\Users\blank\Desktop\SBOM\Android-CleanArchitecture -pn Android-CleanArchitecture -pv v0.9.5 -ps https://github.com/android10/Android-CleanArchitecture -nsb https://fernandocejas.com
    ```
38. [Mindustry](https://github.com/Anuken/Mindustry)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Mindustry -bc C:\Users\blank\Desktop\SBOM\Mindustry -pn Mindustry -pv v138 -ps https://github.com/Anuken/Mindustry -nsb https://mindustrygame.github.io
    ```
39. [disruptor](https://github.com/LMAX-Exchange/disruptor)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\disruptor -bc C:\Users\blank\Desktop\SBOM\disruptor -pn disruptor -pv 4.0.0.RC1 -ps https://github.com/LMAX-Exchange/disruptor -nsb https://disruptor.lmax.com
    ```
40. [elasticsearch-analysis-ik](https://github.com/medcl/elasticsearch-analysis-ik)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\elasticsearch-analysis-ik -bc C:\Users\blank\Desktop\SBOM\elasticsearch-analysis-ik -pn elasticsearch-analysis-ik -pv 8.4.1 -ps https://github.com/medcl/elasticsearch-analysis-ik -nsb https://elasticsearch.org
    ```
41. [presto](https://github.com/prestodb/presto)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\presto -bc C:\Users\blank\Desktop\SBOM\presto -pn presto -pv 0.278-SNAPSHOT -ps https://github.com/prestodb/presto -nsb https://presto.facebook.com
    ```
42. [jdk](https://github.com/openjdk/jdk)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jdk -bc C:\Users\blank\Desktop\SBOM\jdk -pn jdk -pv jdk-20+15 -ps https://github.com/openjdk/jdk -nsb https://openjdk.org/projects/jdk
    ```
43. [logger](https://github.com/orhanobut/logger)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\logger -bc C:\Users\blank\Desktop\SBOM\logger -pn logger -pv 2.2.0 -ps https://github.com/orhanobut/logger -nsb https://github.com/orhanobut/logger
    ```
44. [mockito](https://github.com/mockito/mockito)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\mockito -bc C:\Users\blank\Desktop\SBOM\mockito -pn mockito -pv v4.8.0 -ps https://github.com/mockito/mockito -nsb https://mockito.org
    ```
45. [bytecode-viewer](https://github.com/Konloch/bytecode-viewer)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\bytecode-viewer -bc C:\Users\blank\Desktop\SBOM\bytecode-viewer -pn bytecode-viewer -pv 2.11.2 -ps https://github.com/Konloch/bytecode-viewer -nsb https://bytecodeviewer.com
    ```
46. [vert.x](https://github.com/eclipse-vertx/vert.x)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\vert.x -bc C:\Users\blank\Desktop\SBOM\vert.x -pn vert.x -pv 4.3.4-SNAPSHOT -ps https://github.com/eclipse-vertx/vert.x -nsb https://vertx.io
    ```
47. [antlr4](https://github.com/antlr/antlr4)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\antlr4 -bc C:\Users\blank\Desktop\SBOM\antlr4 -pn antlr4 -pv 4.11.2-SNAPSHOT -ps https://github.com/antlr/antlr4 -nsb https://antlr.org
    ```
48. [deeplearning4j](https://github.com/eclipse/deeplearning4j)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\deeplearning4j -bc C:\Users\blank\Desktop\SBOM\deeplearning4j -pn deeplearning4j -pv 1.0.0-SNAPSHOT -ps https://github.com/deeplearning4j/deeplearning4j -nsb https://deeplearning4j.konduit.ai
    ```
49. [thingsboard](https://github.com/thingsboard/thingsboard)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\thingsboard -bc C:\Users\blank\Desktop\SBOM\thingsboard -pn thingsboard -pv 3.4.2-SNAPSHOT -ps https://github.com/thingsboard/thingsboard -nsb https://thingsboard.io
    ```
50. [jib](https://github.com/GoogleContainerTools/jib)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jib -bc C:\Users\blank\Desktop\SBOM\jib -pn jib -pv v0.11.0-cli -ps https://github.com/GoogleContainerTools/jib -nsb https://jib.tools.cloud.google.com
    ```
51. [caffeine](https://github.com/ben-manes/caffeine)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\caffeine -bc C:\Users\blank\Desktop\SBOM\caffeine -pn caffeine -pv 3.1.1 -ps https://github.com/ben-manes/caffeine -nsb https://caffeine.benmanes.github.com
    ```
52. [jd-gui](https://github.com/java-decompiler/jd-gui)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jd-gui -bc C:\Users\blank\Desktop\SBOM\jd-gui -pn jd-gui -pv 1.6.6 -ps https://github.com/java-decompiler/jd-gui -nsb http://java-decompiler.github.io
    ```
53. [realm-java](https://github.com/realm/realm-java)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\realm-java -bc C:\Users\blank\Desktop\SBOM\realm-java -pn realm-java -pv 10.11.1 -ps https://github.com/realm/realm-java -nsb https://realm.io
    ```
54. [lombok](https://github.com/projectlombok/lombok)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\lombok -bc C:\Users\blank\Desktop\SBOM\lombok -pn lombok -pv v1.18.16 -ps https://github.com/projectlombok/lombok -nsb https://projectlombok.org
    ```
55. [guice](https://github.com/google/guice)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\guice -bc C:\Users\blank\Desktop\SBOM\guice -pn guice -pv 5.1.0 -ps https://github.com/google/guice -nsb https://github.com/google/guice
    ```
56. [uCrop](https://github.com/Yalantis/uCrop)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\uCrop -bc C:\Users\blank\Desktop\SBOM\uCrop -pn uCrop -pv 2.2.8-native -ps https://github.com/Yalantis/uCrop -nsb https://uCrop.yalantis.com
    ```
57. [androidannotations](https://github.com/androidannotations/androidannotations)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\androidannotations -bc C:\Users\blank\Desktop\SBOM\androidannotations -pn androidannotations -pv 4.8.0 -ps https://github.com/androidannotations/androidannotations -nsb https://androidannotations.org
    ```
58. [spring-boot-admin](https://github.com/codecentric/spring-boot-admin)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\spring-boot-admin -bc C:\Users\blank\Desktop\SBOM\spring-boot-admin -pn spring-boot-admin -pv 2.7.5 -ps https://github.com/codecentric/spring-boot-admin -nsb https://codecentric.de
    ```
59. [PermissionsDispatcher](https://github.com/permissions-dispatcher/PermissionsDispatcher)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\PermissionsDispatcher -bc C:\Users\blank\Desktop\SBOM\PermissionsDispatcher -pn PermissionsDispatcher -pv 4.8.0 -ps https://github.com/permissions-dispatcher/PermissionsDispatcher -nsb https://permissions-dispatcher.github.com
    ```
60. [ip2region](https://github.com/lionsoul2014/ip2region)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\ip2region -bc C:\Users\blank\Desktop\SBOM\ip2region -pn ip2region -pv v2.10.0 -ps https://github.com/lionsoul2014/ip2region -nsb https://ip2region.lionsoul.org
    ```
61. [android-async-http](https://github.com/android-async-http/android-async-http)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\android-async-http -bc C:\Users\blank\Desktop\SBOM\android-async-http -pn android-async-http -pv 1.4.11 -ps https://github.com/android-async-http/android-async-http -nsb https://android-async-http.android.loopj.com
    ```
62. [zookeeper](https://github.com/apache/zookeeper)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\zookeeper -bc C:\Users\blank\Desktop\SBOM\zookeeper -pn zookeeper -pv 3.9.0-SNAPSHOT -ps https://github.com/apache/zookeeper -nsb https://https://zookeeper.apache.org
    ```
63. [jedis](https://github.com/redis/jedis)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jedis -bc C:\Users\blank\Desktop\SBOM\jedis -pn jedis -pv 4.3.0-SNAPSHOT -ps https://github.com/redis/jedis -nsb http://groups.google.com/group/jedis_redis
    ```
64. [webmagic](https://github.com/code4craft/webmagic)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\webmagic -bc C:\Users\blank\Desktop\SBOM\webmagic -pn webmagic -pv 0.7.6-SNAPSHOT -ps https://github.com/code4craft/webmagic -nsb https://webmagic.io
    ```
65. [quarkus](https://github.com/quarkusio/quarkus)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\quarkus -bc C:\Users\blank\Desktop\SBOM\quarkus -pn quarkus -pv 2.12.2.Final -ps https://github.com/quarkusio/quarkus -nsb https://quarkus.io
    ```
66. [CtCI-6th-Edition](https://github.com/careercup/CtCI-6th-Edition)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\CtCI-6th-Edition -bc C:\Users\blank\Desktop\SBOM\CtCI-6th-Edition -pn CtCI-6th-Edition -pv 1.0-SNAPSHOT -ps https://github.com/careercup/CtCI-6th-Edition -nsb https://github.com/careercup/CtCI-6th-Edition
    ```
67. [dex2jar](https://github.com/pxb1988/dex2jar)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\dex2jar -bc C:\Users\blank\Desktop\SBOM\dex2jar -pn dex2jar -pv 2.2-SNAPSHOT -ps https://github.com/pxb1988/dex2jar -nsb https://d2j.googlecode.com
    ```
68. [grpc-java](https://github.com/grpc/grpc-java)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\grpc-java -bc C:\Users\blank\Desktop\SBOM\grpc-java -pn grpc-java -pv 1.49.0 -ps https://github.com/grpc/grpc-java -nsb https://grpc.io
    ```
69. [auto](https://github.com/google/auto)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\auto -bc C:\Users\blank\Desktop\SBOM\auto -pn auto -pv auto-value-1.9 -ps https://github.com/google/auto -nsb https://github.com/google/auto
    ```
70. [javapoet](https://github.com/square/javapoet)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\javapoet -bc C:\Users\blank\Desktop\SBOM\javapoet -pn javapoet -pv 1.14.0-SNAPSHOT -ps https://github.com/square/javapoet -nsb https://javapoet.squareup.com
    ```
71. [glide-transformations](https://github.com/wasabeef/glide-transformations)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\glide-transformations -bc C:\Users\blank\Desktop\SBOM\glide-transformations -pn glide-transformations -pv 4.3.0 -ps https://github.com/wasabeef/glide-transformations -nsb https://transformations.glide.wasabeef.jp
    ```
72. [cas](https://github.com/apereo/cas)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\cas -bc C:\Users\blank\Desktop\SBOM\cas -pn cas -pv v6.6.0 -ps https://github.com/apereo/cas -nsb https://apereo.github.io/cas
    ```
73. [jsoup](https://github.com/jhy/jsoup)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jsoup -bc C:\Users\blank\Desktop\SBOM\jsoup -pn jsoup -pv 1.15.4-SNAPSHOT -ps https://github.com/jhy/jsoup -nsb https://jsoup.org
    ```
74. [spark](https://github.com/perwendel/spark)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\spark -bc C:\Users\blank\Desktop\SBOM\spark -pn spark -pv 2.9.4-SNAPSHOT -ps https://github.com/perwendel/spark -nsb https://sparkjava.com
    ```
75. [Grasscutter](https://github.com/Grasscutters/Grasscutter)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Grasscutter -bc C:\Users\blank\Desktop\SBOM\Grasscutter -pn Grasscutter -pv v1.3.1 -ps https://github.com/Grasscutters/Grasscutter -nsb https://grasscutter.io
    ```
76. [Java-WebSocket](https://github.com/TooTallNate/Java-WebSocket)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Java-WebSocket -bc C:\Users\blank\Desktop\SBOM\Java-WebSocket -pn Java-WebSocket -pv 1.5.4-SNAPSHOT -ps https://github.com/TooTallNate/Java-WebSocket -nsb https://java-websocket.org
    ```
77. [JsBridge](https://github.com/lzyzsd/JsBridge)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\JsBridge -bc C:\Users\blank\Desktop\SBOM\JsBridge -pn JsBridge -pv 2.0.0 -ps https://github.com/lzyzsd/JsBridge -nsb https://github.com/lzyzsd/JsBridge
    ```
78. [OpenRefine](https://github.com/OpenRefine/OpenRefine)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\OpenRefine -bc C:\Users\blank\Desktop\SBOM\OpenRefine -pn OpenRefine -pv v3.6.1 -ps https://github.com/OpenRefine/OpenRefine -nsb https://openrefine.org
    ```
79. [questdb](https://github.com/questdb/questdb)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\questdb -bc C:\Users\blank\Desktop\SBOM\questdb -pn questdb -pv 6.5.2 -ps https://github.com/questdb/questdb -nsb https://questdb.io
    ```
80. [Activiti](https://github.com/Activiti/Activiti)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Activiti -bc C:\Users\blank\Desktop\SBOM\Activiti -pn Activiti -pv 7.5.0 -ps https://github.com/Activiti/Activiti -nsb https://www.activiti.org
    ```
81. [CoreNLP](https://github.com/stanfordnlp/CoreNLP)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\CoreNLP -bc C:\Users\blank\Desktop\SBOM\CoreNLP -pn CoreNLP -pv 4.5.1 -ps https://github.com/stanfordnlp/CoreNLP -nsb https://nlp.stanford.edu
    ```
82. [android-gpuimage](https://github.com/cats-oss/android-gpuimage)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\android-gpuimage -bc C:\Users\blank\Desktop\SBOM\android-gpuimage -pn android-gpuimage -pv v2.0.4 -ps https://github.com/cats-oss/android-gpuimage -nsb https://github.com/cats-oss/android-gpuimage
    ```
83. [BottomBar](https://github.com/roughike/BottomBar)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\BottomBar -bc C:\Users\blank\Desktop\SBOM\BottomBar -pn BottomBar -pv v2.3.1 -ps https://github.com/roughike/BottomBar -nsb https://github.com/roughike/BottomBar
    ```
84. [awesome-java-leetcode](https://github.com/Blankj/awesome-java-leetcode)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\awesome-java-leetcode -bc C:\Users\blank\Desktop\SBOM\awesome-java-leetcode -pn awesome-java-leetcode -pv 1.0-SNAPSHOT -ps https://github.com/Blankj/awesome-java-leetcode -nsb https://github.com/Blankj/awesome-java-leetcode
    ```
85. [jjwt](https://github.com/jwtk/jjwt)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\jjwt -bc C:\Users\blank\Desktop\SBOM\jjwt -pn jjwt -pv 0.11.6-SNAPSHOT -ps https://github.com/jwtk/jjwt -nsb https://jsonwebtoken.io
    ```
86. [buck](https://github.com/facebook/buck)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\buck -bc C:\Users\blank\Desktop\SBOM\buck -pn buck -pv v2022.05.05.01 -ps https://github.com/facebook/buck -nsb https://buck.build
    ```
87. [junit4](https://github.com/junit-team/junit4)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\junit4 -bc C:\Users\blank\Desktop\SBOM\junit4 -pn junit4 -pv 4.13.2 -ps https://github.com/junit-team/junit4 -nsb https://junit.org/junit4
    ```
88. [dropwizard](https://github.com/dropwizard/dropwizard)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\dropwizard -bc C:\Users\blank\Desktop\SBOM\dropwizard -pn dropwizard -pv 2.1.2 -ps https://github.com/dropwizard/dropwizard -nsb https://www.dropwizard.io
    ```
89. [dropwizard](https://github.com/florent37/MaterialViewPager)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\MaterialViewPager -bc C:\Users\blank\Desktop\SBOM\MaterialViewPager -pn MaterialViewPager -pv 1.2.0 -ps https://github.com/florent37/MaterialViewPager -nsb https://www.fiches-plateau-moto.fr
    ```
90. [feign](https://github.com/OpenFeign/feign)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\feign -bc C:\Users\blank\Desktop\SBOM\feign -pn feign -pv 11.10-SNAPSHOT -ps https://github.com/OpenFeign/feign -nsb https://openfeign.github.io
    ```
91. [DSA-Bootcamp-Java](https://github.com/kunal-kushwaha/DSA-Bootcamp-Java)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\DSA-Bootcamp-Java -bc C:\Users\blank\Desktop\SBOM\DSA-Bootcamp-Java -pn DSA-Bootcamp-Java -pv 1.0-SNAPSHOT -ps https://github.com/kunal-kushwaha/DSA-Bootcamp-Java -nsb https://www.commclassroom.org/java
    ```
92. [capacitor](https://github.com/ionic-team/capacitor)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\capacitor -bc C:\Users\blank\Desktop\SBOM\capacitor -pn capacitor -pv 4.2.0 -ps https://github.com/ionic-team/capacitor -nsb https://capacitorjs.com
    ```
93. [cryptomator](https://github.com/cryptomator/cryptomator)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\cryptomator -bc C:\Users\blank\Desktop\SBOM\cryptomator -pn cryptomator -pv 1.6.14 -ps https://github.com/cryptomator/cryptomator -nsb https://cryptomator.org
    ```
94. [metrics](https://github.com/dropwizard/metrics)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\metrics -bc C:\Users\blank\Desktop\SBOM\metrics -pn metrics -pv v4.2.12 -ps https://github.com/dropwizard/metrics -nsb https://metrics.dropwizard.io
    ```
95. [RxJava-Android-Samples](https://github.com/kaushikgopal/RxJava-Android-Samples)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\RxJava-Android-Samples -bc C:\Users\blank\Desktop\SBOM\RxJava-Android-Samples -pn RxJava-Android-Samples -pv 1.0-SNAPSHOT -ps https://github.com/kaushikgopal/RxJava-Android-Samples -nsb https://github.com/kaushikgopal/RxJava-Android-Samples
    ```
96. [cassandra](https://github.com/apache/cassandra)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\cassandra -bc C:\Users\blank\Desktop\SBOM\cassandra -pn cassandra -pv 4.0.6 -ps https://github.com/apache/cassandra -nsb https://cassandra.apache.org
    ```
97. [vjtools](https://github.com/vipshop/vjtools)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\vjtools -bc C:\Users\blank\Desktop\SBOM\vjtools -pn vjtools -pv 1.0.9-SNAPSHOT -ps https://github.com/vipshop/vjtools -nsb https://vjtools.vip.com
    ```
98. [dagger](https://github.com/square/dagger)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\dagger -bc C:\Users\blank\Desktop\SBOM\dagger -pn dagger -pv 1.2.6-SNAPSHOT -ps https://github.com/square/dagger -nsb https://dagg.squareup.com
    ```
99. [Android-Bootstrap](https://github.com/Bearded-Hen/Android-Bootstrap)
    ```shell
    sbom-tool generate -b C:\Users\blank\Desktop\SBOM\Android-Bootstrap -bc C:\Users\blank\Desktop\SBOM\Android-Bootstrap -pn Android-Bootstrap -pv 2.3.1 -ps https://github.com/Bearded-Hen/Android-Bootstrap -nsb https://androidbootstrap.beardedhen.com
    ```
100. [UltimateRecyclerView](https://github.com/cymcsg/UltimateRecyclerView)
     ```shell
     sbom-tool generate -b C:\Users\blank\Desktop\SBOM\UltimateRecyclerView -bc C:\Users\blank\Desktop\SBOM\UltimateRecyclerView -pn UltimateRecyclerView -pv v0.7.0 -ps https://github.com/cymcsg/UltimateRecyclerView -nsb https://github.com/cymcsg/UltimateRecyclerView
     ```

## 异常情况

1. 以下情况比较常见：
    ```
    [INFO] No instructions received to scan docker images.
    ```
2. Repo14出现：
    ```
    [INFO] Failed to find resolved dependency for @esbuild/linux-loong64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-android-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-android-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-darwin-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-freebsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-freebsd-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-32@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-arm@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-mips64le@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-ppc64le@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-riscv64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-s390x@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-netbsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-openbsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-sunos-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-32@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for @esbuild/linux-loong64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-android-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-android-arm64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-darwin-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-freebsd-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-freebsd-arm64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-32@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-arm@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-arm64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-mips64le@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-ppc64le@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-riscv64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-linux-s390x@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-netbsd-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-openbsd-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-sunos-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-windows-32@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-windows-64@npm:0.14.54
    [INFO] Failed to find resolved dependency for esbuild-windows-arm64@npm:0.14.54
    [INFO] Failed to find resolved dependency for @esbuild/linux-loong64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-android-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-android-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-darwin-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-freebsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-freebsd-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-32@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-arm@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-arm64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-mips64le@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-ppc64le@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-riscv64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-linux-s390x@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-netbsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-openbsd-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-sunos-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-32@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-64@npm:0.15.5
    [INFO] Failed to find resolved dependency for esbuild-windows-arm64@npm:0.15.5
    ```
3. Repo31出现：
    ```
    [WARN] Failed to read a name for block fsevents@patch:fsevents@~2.3.2#~builtin<compat/fsevents>. The entry will be skipped.
    [WARN] Failed to read a name for block resolve@patch:resolve@^1.10.0#~builtin<compat/resolve>, resolve@patch:resolve@^1.14.2#~builtin<compat/resolve>, resolve@patch:resolve@^1.9.0#~builtin<compat/resolve>. The entry will be skipped.
    ```
4. Repo35出现：
    ```
    [INFO] Getting Python data from https://pypi.org/pypi/需要的模块有以下几个，可以在python交互终端验证是否存在，我使用的python2.7都已存在，不需要额外安装/json
    [INFO] Enumerated 3788 files and 838 directories in 00:00:00.2841186
    [WARN] Received 404 Not Found from https://pypi.org/pypi/需要的模块有以下几个，可以在python交互终端验证是否存在，我使用 的python2.7都已存在，不需要额外安装/json
    [WARN] Root dependency 需要的模块有以下几个，可以在python交互终端验证是否存在，我使用的python2.7都已存在，不需要额外安装 not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/BaseHTTPServer/json
    [WARN] Received 404 Not Found from https://pypi.org/pypi/BaseHTTPServer/json
    [WARN] Root dependency BaseHTTPServer not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/urllib/json
    [WARN] Received 404 Not Found from https://pypi.org/pypi/urllib/json
    [WARN] Root dependency urllib not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/email/json
    [INFO] Getting Python data from https://pypi.org/pypi/smtplib/json
    [WARN] Received 404 Not Found from https://pypi.org/pypi/smtplib/json
    [WARN] Root dependency smtplib not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/sys/json
    [WARN] Received 404 Not Found from https://pypi.org/pypi/sys/json
    [WARN] Root dependency sys not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/logging/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/3e/2f/cc7f91fe77774a7a2bfab50dbde0adaf0ce765d42f5a2d47884c0ce99dda/email-4.0.2-py2.4.egg
    ```
5. Repo47出现：
    ```
    [INFO] Go CLI was not found in the system
    [INFO] Version '$version$$pre$' from C:\Users\blank\Desktop\SBOM\antlr4\runtime\Cpp\runtime\nuget\ANTLR4.Runtime.cpp.noarch.nuspec could not be parsed as a NuGet version
    [INFO] Version '$version$$pre$' from C:\Users\blank\Desktop\SBOM\antlr4\runtime\Cpp\runtime\nuget\ANTLR4.Runtime.cpp.shared.nuspec could not be parsed as a NuGet version
    [INFO] Go CLI was not found in the system
    [INFO] Version '$version$$pre$' from C:\Users\blank\Desktop\SBOM\antlr4\runtime\Cpp\runtime\nuget\ANTLR4.Runtime.cpp.static.nuspec could not be parsed as a NuGet version
    [INFO] Go CLI was not found in the system
    [INFO] Enumerated 2305 files and 278 directories in 00:00:00.2178464
    ```
6. Repo48出现：
    ```
    [INFO] Getting Python data from https://pypi.org/pypi/keras-applications/json
    [INFO] Enumerated 7936 files and 2168 directories in 00:00:00.3833651
    [INFO] Getting Python data from https://pypi.org/pypi/huggingface-hub/json
    [INFO] Getting Python data from https://pypi.org/pypi/tensorflow-hub/json
    [INFO] Getting Python data from https://pypi.org/pypi/onnx/json
    [INFO] Getting Python data from https://pypi.org/pypi/requests/json
    [INFO] Getting Python data from https://pypi.org/pypi/pytest/json
    [INFO] Getting Python data from https://pypi.org/pypi/torch-model-archiver/json
    [INFO] Getting Python data from https://pypi.org/pypi/cchardet/json
    [INFO] Getting Python data from https://pypi.org/pypi/tensorflow/json
    [INFO] Getting Python data from https://pypi.org/pypi/transformers/json
    [INFO] Getting Python data from https://pypi.org/pypi/scikit-learn/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/71/e3/19762fdfc62877ae9102edf6342d71b28fbfd9dea3d2f96a882ce099b03f/Keras_Applications-1.0.8-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/8a/27/d92a2d41373fc91045d9a2ba5f9e0664a0f1ba6c3b52d9bc40ff1eccb5be/huggingface_hub-0.9.1-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/filelock/json
    [INFO] Getting Python data from https://pypi.org/pypi/tqdm/json
    [INFO] Getting Python data from https://pypi.org/pypi/pyyaml/json
    [INFO] Getting Python data from https://pypi.org/pypi/typing-extensions/json
    [INFO] Getting Python data from https://pypi.org/pypi/packaging/json
    [INFO] Getting Python data from https://pypi.org/pypi/importlib-metadata/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/29/32/899878aa65cae5429f30449cdda61224e3f4319e6a155027bc3af4c3f07b/tensorflow_hub-0.12.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/numpy/json
    [INFO] Getting Python data from https://pypi.org/pypi/protobuf/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/56/15/57cd390fa0a8cb548dad706231c36a94af5f51868a53eafe784a924d74b3/onnx-1.12.0-cp310-cp310-macosx_10_12_x86_64.whl
    ```
7. Repo58出现：
    ```
    [INFO] C:\Users\blank\Desktop\SBOM\spring-boot-admin\spring-boot-admin-samples\spring-boot-admin-sample-custom-ui\package.json does not contain a name and/or version. These are required fields for a valid package.json file.It and its dependencies will not be registered.
    [INFO] C:\Users\blank\Desktop\SBOM\spring-boot-admin\spring-boot-admin-server-ui\package.json does not contain a name and/or version. These are required fields for a valid package.json file.It and its dependencies will not be registered.
    [INFO] Enumerated 946 files and 309 directories in 00:00:00.1539449
    [INFO] C:\Users\blank\Desktop\SBOM\spring-boot-admin\spring-boot-admin-samples\spring-boot-admin-sample-custom-ui\package-lock.json does not contain a valid name and/or version. These are required fields for a valid package-lock.json file.It and its dependencies will not be registered.
    [INFO] C:\Users\blank\Desktop\SBOM\spring-boot-admin\spring-boot-admin-server-ui\package-lock.json does not contain a valid name and/or version. These are required fields for a valid package-lock.json file.It and its dependencies will not be registered.
    ```
8. Repo72出现：
    ```
    [INFO] C:\Users\blank\Desktop\SBOM\cas\ci\tests\puppeteer\package.json does not contain a name and/or version. These are required fields for a valid package.json file.It and its dependencies will not be registered.
    [INFO] Getting Python data from https://pypi.org/pypi/Flask/json
    [INFO] Getting Python data from https://pypi.org/pypi/gevent/json
    [INFO] Enumerated 9572 files and 8998 directories in 00:00:01.5708886
    [INFO] Getting Python data from https://pypi.org/pypi/click/json
    [INFO] Getting Python data from https://pypi.org/pypi/geventhttpclient-wheels/json
    [WARN] Root dependency geventhttpclient-wheels not found on pypi. Skipping package.
    [INFO] Getting Python data from https://pypi.org/pypi/idna/json
    [INFO] Getting Python data from https://pypi.org/pypi/greenlet/json
    [INFO] Getting Python data from https://pypi.org/pypi/Jinja2/json
    [INFO] Getting Python data from https://pypi.org/pypi/itsdangerous/json
    [INFO] Getting Python data from https://pypi.org/pypi/locust/json
    [INFO] Getting Python data from https://pypi.org/pypi/MarkupSafe/json
    [INFO] Getting Python data from https://pypi.org/pypi/msgpack-python/json
    [INFO] Getting Python data from https://pypi.org/pypi/pyzmq/json
    [INFO] Getting Python data from https://pypi.org/pypi/six/json
    [INFO] Getting Python data from https://pypi.org/pypi/requests/json
    [INFO] Getting Python data from https://pypi.org/pypi/Werkzeug/json
    [INFO] Getting Python data from https://pypi.org/pypi/urllib3/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/f2/28/2a03252dfb9ebf377f40fba6a7841b47083260bf8bd8e737b0c6952df83f/Flask-1.1.2-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/b2/ad/6c17d4e83fec7d1b04cd2e999c0311948ed1138cd1d55be11e4526b5b88a/gevent-20.6.2-cp27-cp27m-macosx_10_15_x86_64.whl
    [INFO] Getting Python data from https://pypi.org/pypi/zope.event/json
    [INFO] Getting Python data from https://pypi.org/pypi/zope.interface/json
    [INFO] Getting Python data from https://pypi.org/pypi/cffi/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/d2/3d/fa76db83bf75c4f8d338c2fd15c8d33fdd7ad23a9b5e57eb6c5de26b430e/click-7.1.2-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/a2/38/928ddce2273eaa564f6f50de919327bf3a00f091b5baba8dfa9460f3a8a8/idna-2.10-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/e4/89/d15f76364046b6fb052ff020c4b4982cc3349f2533feff2cf326be0cdb5c/greenlet-0.4.16-cp27-cp27m-manylinux1_x86_64.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/7e/c2/1eece8c95ddbc9b1aeb64f5783a9e07a286de42191b7204d67b7496ddf35/Jinja2-2.11.3-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/76/ae/44b03b253d6fade317f32c24d100b3b35c2239807046a4c953c7b89fa49e/itsdangerous-1.1.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/06/e4/19ad79ee0c39eb6cca876565ea0fb2188bf810ed4ceca925ed2dfb30f747/locust-1.1-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/msgpack/json
    [INFO] Getting Python data from https://pypi.org/pypi/geventhttpclient/json
    [INFO] Getting Python data from https://pypi.org/pypi/ConfigArgParse/json
    [INFO] Getting Python data from https://pypi.org/pypi/psutil/json
    [INFO] Getting Python data from https://pypi.org/pypi/Flask-BasicAuth/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/6d/d2/0ccd2c0e2cd93b35e765d9b3205cd6602e6b202b522fc7997531353715b3/MarkupSafe-1.1.1-cp27-cp27m-macosx_10_6_intel.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/36/0a/abb91b112d796c8cf572902b423a76553ffd5505a5be00c6a210a2d7e545/pyzmq-19.0.1-cp27-cp27m-macosx_10_9_intel.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/ee/ff/48bde5c0f013094d729fe4b0316ba2a24774b3ff1c52d924a8a4cb04078a/six-1.15.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/45/1e/0c169c6a5381e241ba7404532c16a21d86ab872c9bed8bdcd4c423954103/requests-2.24.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/chardet/json
    [WARN] Candidate version (urllib3 1.26.5 - pip) for urllib3 already exists in map and the version is NOT valid.
    [WARN] Specifiers: !=1.25.1,<1.26,!=1.25.0,>=1.21.1 for package requests caused this.
    [WARN] Version Resolution for urllib3 failed, assuming last valid version is used.
    [INFO] Getting Python data from https://pypi.org/pypi/certifi/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/cc/94/5f7079a0e00bd6863ef8f1da638721e9da21e5bacee597595b318f71d62e/Werkzeug-1.0.1-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/0c/cd/1e2ec680ec7b09846dc6e605f5a7709dfb9d7128e51a026e7154e18a234e/urllib3-1.26.5-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/9e/85/b45408c64f3b888976f1d5b37eed8d746b8d5729a66a49ec846fda27d371/zope.event-4.5.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/07/84/0f52108c5ad00e30869c030b37cfe5cd189befc5d9dec5a05e61d791e5da/zope.interface-5.4.0-cp27-cp27m-macosx_10_14_x86_64.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/3f/fa/dfc242febbff049509e5a35a065bdc10f90d8c8585361c2c66b9c2f97a01/cffi-1.15.1-cp27-cp27m-macosx_10_9_x86_64.whl
    [INFO] Getting Python data from https://pypi.org/pypi/pycparser/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/83/69/2f442b38fbba1cedc88bfce381b67d78b59145471a3c9581ec9417a8625b/msgpack-1.0.4-cp310-cp310-macosx_10_9_universal2.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/9d/89/6cc7633893f1e07dc56bd280a4d4d7d02cbec804c6ae5116a39136ca6aa3/geventhttpclient-2.0.2-cp310-cp310-macosx_10_9_universal2.whl
    [INFO] Getting Python data from https://pypi.org/pypi/brotli/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/af/cb/2a6620656f029b7b49c302853b433fac2c8eda9cbb5a3bc70b186b1b5b90/ConfigArgParse-1.5.3-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/37/a4/cb10e4c0faa3091de22eb78fa1c332566e60b9b59001bef326a4c1070417/psutil-5.9.2-cp27-cp27m-manylinux2010_i686.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/6a/34/cd29f4dd8a23ce45f2b8ce9631ff2d4205fb74eddb412a3dc4fd1e4aa800/certifi-2022.9.14-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/62/d5/5f610ebe421e85889f2e55e33b7f9a6795bd982198517d912eb1c76e1a53/pycparser-2.21-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/66/aa/7920fae008c4f127f07331964a66b842a5209ce6d52238672dd8aa8cbf36/Brotli-1.0.9-cp27-cp27m-macosx_10_9_x86_64.whl
    ```
9. Repo78出现：
   ```
   [INFO] C:\Users\blank\Desktop\SBOM\OpenRefine\main\webapp\package-lock.json does not contain a valid name and/or version. These are required fields for a valid package-lock.json file.It and its dependencies will not be registered.
   [INFO] C:\Users\blank\Desktop\SBOM\OpenRefine\main\webapp\package.json does not contain a name and/or version. These are required fields for a valid package.json file.It and its dependencies will not be registered.
   [INFO] Getting Python data from https://pypi.org/pypi/requests/json
   [INFO] Enumerated 2183 files and 427 directories in 00:00:00.1876749
   [INFO] Failed to find resolved dependency for react-loadable@npm:@docusaurus/react-loadable@5.5.2
   [INFO] Failed to find resolved dependency for react-loadable@npm:@docusaurus/react-loadable@5.5.2
   [INFO] Failed to find resolved dependency for react-loadable@npm:@docusaurus/react-loadable@5.5.2
   [INFO] Processing file C:\Users\blank\Desktop\SBOM\OpenRefine\main\tests\cypress\yarn.lock
   [INFO] Getting Python data from https://pypi.org/pypi/lxml/json
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/ca/91/6d9b8ccacd0412c08820f72cebaa4f0c0441b5cda699c90f618b6f8a1b42/requests-2.28.1-py3-none-any.whl
   [INFO] Getting Python data from https://pypi.org/pypi/charset-normalizer/json
   [INFO] Getting Python data from https://pypi.org/pypi/idna/json
   [INFO] Getting Python data from https://pypi.org/pypi/urllib3/json
   [INFO] Getting Python data from https://pypi.org/pypi/certifi/json
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/2f/09/dd2424b1ddff59402a89615b5157af1e68b548857e4e58a403b8d14719cb/lxml-4.9.1-cp27-cp27m-macosx_10_15_x86_64.whl
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/db/51/a507c856293ab05cdc1db77ff4bc1268ddd39f29e7dc4919aa497f0adbec/charset_normalizer-2.1.1-py3-none-any.whl
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/fc/34/3030de6f1370931b9dbb4dad48f6ab1015ab1d32447850b9fc94e60097be/idna-3.4-py3-none-any.whl
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/6f/de/5be2e3eed8426f871b170663333a0f627fc2924cc386cd41be065e7ea870/urllib3-1.26.12-py2.py3-none-any.whl
   [INFO] Getting Python data from https://files.pythonhosted.org/packages/6a/34/cd29f4dd8a23ce45f2b8ce9631ff2d4205fb74eddb412a3dc4fd1e4aa800/certifi-2022.9.14-py3-none-any.whl
   ```
10. Repo88出现：
    ```
    [INFO] Getting Python data from https://pypi.org/pypi/Sphinx/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinx-autobuild/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinx-rtd-theme/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/11/d2/7002d5c3ab52c817f24622df0f0cad739169ab7af77b20dfc9dcfa4252dc/lesscpy-0.15.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/ply/json
    [INFO] Getting Python data from https://pypi.org/pypi/six/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/83/74/318d8cd70cbde2164e3035f9e9ba0807e2de7d384e03784ad0afc98b891b/Sphinx-5.1.1-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-applehelp/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-devhelp/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-jsmath/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-htmlhelp/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-serializinghtml/json
    [INFO] Getting Python data from https://pypi.org/pypi/sphinxcontrib-qthelp/json
    [INFO] Getting Python data from https://pypi.org/pypi/Jinja2/json
    [INFO] Getting Python data from https://pypi.org/pypi/Pygments/json
    [INFO] Getting Python data from https://pypi.org/pypi/docutils/json
    [INFO] Getting Python data from https://pypi.org/pypi/snowballstemmer/json
    [INFO] Getting Python data from https://pypi.org/pypi/babel/json
    [INFO] Getting Python data from https://pypi.org/pypi/alabaster/json
    [INFO] Getting Python data from https://pypi.org/pypi/imagesize/json
    [INFO] Getting Python data from https://pypi.org/pypi/requests/json
    [INFO] Getting Python data from https://pypi.org/pypi/packaging/json
    [INFO] Getting Python data from https://pypi.org/pypi/importlib-metadata/json
    [INFO] Getting Python data from https://pypi.org/pypi/colorama/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/7e/7d/8fb7557b6c9298d2bcda57f4d070de443c6355dfb475582378e2aa16a02c/sphinx_autobuild-2021.3.14-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/livereload/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/e0/d2/3818e4730e314719e27f639c44164419e40eed826d63753dc480262036e8/sphinx_rtd_theme-1.0.0-py2.py3-none-any.whl
    [WARN] Candidate version (docutils 0.19 - pip) for docutils already exists in map and the version is NOT valid.
    [WARN] Specifiers: <0.18 for package sphinx-rtd-theme caused this.
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/4c/5e/6003a0d1f37725ec2ebd4046b657abb9372202655f96e76795dca8c0063c/docutils-0.17.1-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/a3/58/35da89ee790598a0700ea49b2a66594140f44dec458c07e8e3d4979137fc/ply-3.11-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/d9/5a/e7c31adbe875f2abbb91bd84cf2dc52d792b5a01506781dbcf25c91daf11/six-1.16.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/dc/47/86022665a9433d89a66f5911b558ddff69861766807ba685de2e324bd6ed/sphinxcontrib_applehelp-1.0.2-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/c5/09/5de5ed43a521387f18bdf5f5af31d099605c992fd25372b2b9b825ce48ee/sphinxcontrib_devhelp-1.0.2-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/c2/42/4c8646762ee83602e3fb3fbe774c2fac12f317deb0b5dbeeedd2d3ba4b77/sphinxcontrib_jsmath-1.0.1-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/63/40/c854ef09500e25f6432dcbad0f37df87fd7046d376272292d8654cc71c95/sphinxcontrib_htmlhelp-2.0.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/c6/77/5464ec50dd0f1c1037e3c93249b040c8fc8078fdda97530eeb02424b6eea/sphinxcontrib_serializinghtml-1.1.5-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/2b/14/05f9206cf4e9cfca1afb5fd224c7cd434dcc3a433d6d9e4e0264d29c6cdb/sphinxcontrib_qthelp-1.0.3-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/bc/c3/f068337a370801f372f2f8f6bad74a5c140f6fda3d9de154052708dd3c65/Jinja2-3.1.2-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/MarkupSafe/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/4f/82/672cd382e5b39ab1cd422a672382f08a1fb3d08d9e0c0f3707f33a52063b/Pygments-2.13.0-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/ed/dc/c02e01294f7265e63a7315fe086dd1df7dacb9f840a804da846b96d01b96/snowballstemmer-2.2.0-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/2e/57/a4177e24f8ed700c037e1eca7620097fdfbb1c9b358601e40169adf6d364/Babel-2.10.3-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/10/ad/00b090d23a222943eb0eda509720a404f531a439e803f6538f35136cae9e/alabaster-0.7.12-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/ff/62/85c4c919272577931d407be5ba5d71c20f0b616d31a0befe0ae45bb79abd/imagesize-1.4.1-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/ca/91/6d9b8ccacd0412c08820f72cebaa4f0c0441b5cda699c90f618b6f8a1b42/requests-2.28.1-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/charset-normalizer/json
    [INFO] Getting Python data from https://pypi.org/pypi/idna/json
    [INFO] Getting Python data from https://pypi.org/pypi/urllib3/json
    [INFO] Getting Python data from https://pypi.org/pypi/certifi/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/05/8e/8de486cbd03baba4deef4142bd643a3e7bbe954a784dc1bb17142572d127/packaging-21.3-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/pyparsing/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/d2/a2/8c239dc898138f208dd14b441b196e7b3032b94d3137d9d8453e186967fc/importlib_metadata-4.12.0-py3-none-any.whl
    [INFO] Getting Python data from https://pypi.org/pypi/zipp/json
    [INFO] Getting Python data from https://pypi.org/pypi/typing-extensions/json
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/77/8b/7550e87b2d308a1b711725dfaddc19c695f8c5fa413c640b2be01662f4e6/colorama-0.4.5-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/d9/60/94e9de017674f88a514804e2924bdede9a642aba179d2045214719d6ec76/MarkupSafe-2.1.1-cp310-cp310-macosx_10_9_universal2.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/db/51/a507c856293ab05cdc1db77ff4bc1268ddd39f29e7dc4919aa497f0adbec/charset_normalizer-2.1.1-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/fc/34/3030de6f1370931b9dbb4dad48f6ab1015ab1d32447850b9fc94e60097be/idna-3.4-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/6f/de/5be2e3eed8426f871b170663333a0f627fc2924cc386cd41be065e7ea870/urllib3-1.26.12-py2.py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/6a/34/cd29f4dd8a23ce45f2b8ce9631ff2d4205fb74eddb412a3dc4fd1e4aa800/certifi-2022.9.14-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/6c/10/a7d0fa5baea8fe7b50f448ab742f26f52b80bfca85ac2be9d35cdd9a3246/pyparsing-3.0.9-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/f0/36/639d6742bcc3ffdce8b85c31d79fcfae7bb04b95f0e5c4c6f8b206a038cc/zipp-3.8.1-py3-none-any.whl
    [INFO] Getting Python data from https://files.pythonhosted.org/packages/ed/d6/2afc375a8d55b8be879d6b4986d4f69f01115e795e36827fd3a40166028b/typing_extensions-4.3.0-py3-none-any.whl
    ```
