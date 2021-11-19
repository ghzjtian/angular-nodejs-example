# [NodeJS and Angular](https://medium.com/bb-tutorials-and-thoughts/how-to-develop-and-build-angular-app-with-nodejs-e24c40444421)

## Command

* Docker build image and run
```
// Build
docker build -t angular-node-image .
// Run
docker run -d -p 3080:3080 --name angular-node-ui angular-node-image
// Enter container
docker exec -it angular-node-ui /bin/sh 
```

* Docker compose

```
// 开启
docker-compose up -d
// 关闭
docker-compose down
// 移除
docker-compose rm
```