FROM localhost:50000/tomcat:8.0-jre8-alpine

MAINTAINER yuzhang <1580074674@qq.com>

ADD simple-web-1.0.0.war /usr/local/tomcat/webapps/