# node 10 버전 사용 (nodeImage 사용)
FROM node:10

# Container 접근할 때는 바로 아래 지정한 디렉토리로 접근하게 됨
WORKDIR /usr/workdir/app

# package.json 컨테이너 안으로 복사하기 
COPY package.json ./

# 추가적으로 필요한 파일 다운로드
RUN npm install

# 로컬 디렉토리 내용 전체를 Docker Container 안에다 복사하기
COPY ./ ./

# 컨테이너 시작시 실행 될 명령어를 명시해준다. 
CMD ["node", "server.js"];