const express = require('express');
const redis = require('redis');

// Redis client create

const client = redis.createClient({
  host: "redis-server", // 컨테이너 이름을 명시해주면 됨
  port: 6379
})

const app = express();

client.set("number", 0);

app.get('/', (req, res) => {
  client.get("number", (err, number) => {
    res.send("숫자가 1씩 올라갑니다." + number);
    client.set("number", parseInt(number) + 1);
  })
});

app.listen(8080);
console.log("Server is running!!");