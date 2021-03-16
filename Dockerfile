# Minimal Zulu OpenJDK 
FROM delitescere/jdk

ONBUILD ADD stubby.yml /usr/local/stubby.yml

RUN wget https://search.maven.org/remotecontent?filepath=io/github/azagniotov/stubby4j/7.2.0/stubby4j-7.2.0.jar -O /usr/local/stubby4j.jar         

EXPOSE 8889 8882

# java -jar stubby4j-x.x.xx.jar -d <PATH_TO_LOCAL_YAML_CONFIG>
CMD java -jar /usr/local/stubby4j.jar -d /usr/local/stubby.yml -l 0.0.0.0 -w -s $STUBBY_PORT