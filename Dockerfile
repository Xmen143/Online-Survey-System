FROM docker.wso2.com/wso2mi:4.1.0.41
COPY target/*.car $WSO2_SERVER_HOME/repository/deployment/server/carbonapps/ 
COPY Libs/*.jar $WSO2_SERVER_HOME/lib/ 
COPY Conf/*.toml $WSO2_SERVER_HOME/conf/ 
COPY Certificate/*.jks $WSO2_SERVER_HOME/repository/resources/security/
COPY Certificate/*.cer $WSO2_SERVER_HOME/repository/resources/security/
COPY Certificate/*.pfx $WSO2_SERVER_HOME/repository/resources/security/
RUN rm $WSO2_SERVER_HOME/wso2/components/plugins/jsr105_1.0.1.wso2v1.jar
RUN rm $WSO2_SERVER_HOME/wso2/components/plugins/xmlsec_1.5.6.wso2v1.jar