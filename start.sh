source /etc/profile

ID=`ps -ef | grep oncloud-service-1.0.0-SNAPSHOT.jar | grep -v "grep" | awk '{print $2}'`
echo $ID
echo "-----------kill----------------"
for id in $ID
do
kill -9 $id
echo "kiiled " $id
done
echo "---------------------------"

echo "----------start server-----------------"
#nohup java -jar oncloud-service-1.0.0-SNAPSHOT.jar --spring.profiles.active=$1 -Xms6g -Xmx6g -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/data/logs/oncloud-service/heapDump.hprof -Xloggc:/data/logs/oncloud-service/gclog-%t.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=20M -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCCause >> /dev/null 2>&1 &
nohup java -jar oncloud-service-1.0.0-SNAPSHOT.jar --spring.profiles.active=$1 -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/data/logs/oncloud-service/heapDump.hprof -Xloggc:/data/logs/oncloud-service/gclog-%t.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=20M -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCCause >> /dev/null 2>&1 &