# Lặp mỗi 10 giây để đảm bảo có log
while true; do
  bin/kafka-topics.sh --create --topic test-$(date +%s) \
    --bootstrap-server localhost:9092 \
    --partitions 1 --replication-factor 1 2>/dev/null
  sleep 10
done
