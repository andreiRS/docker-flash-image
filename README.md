Docker Flash Image
========================

Sample docker image with all dependencies installed to be able to compile and package an air app.

Installed packages:
-------------------
- gradle 2.6
- gradleFx 1.1
- Apache Flex 4.14
- Adobe Air SDK 18.0

Getting Started:
------------------
To get started run the following steps:
```java
// build image
docker build -t docker-flash-image .

// run image
run image docker run -i -t -v ##ABSOLUTE_HOST_PATH##:/apps/air-app docker-flash-image /bin/bash

// package app
gradle package
```
