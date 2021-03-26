 # 이미지 만들 때 사용하는 파일 => Dockerfile
FROM node:12

COPY ./package* /usr/src/app/
WORKDIR /usr/src/app
RUN npm install

# 자주 변경 되는 부분은 app 이기 때문에 위의 부분은 캐시가 계속 적용될 것임
COPY . /usr/src/app
# 3.
WORKDIR /usr/src/app 

EXPOSE 3000
CMD node app.js