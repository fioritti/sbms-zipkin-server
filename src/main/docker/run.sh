getPort() {
    echo $1 | cut -d : -f 3 | xargs basename
}
     
echo "********************************************************"
echo "Starting the Zipkin Server"
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$SERVER_PORT   \
     -Dspring.profiles.active=$PROFILE                          \
      -Dspring.zipkin.baseUrl=$ZIPKIN_URI                       \
     -Xmx64m -Xss256k													\
     -jar /usr/local/zipkinserver/@project.build.finalName@.jar