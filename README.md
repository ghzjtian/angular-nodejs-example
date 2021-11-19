# [NodeJS and Angular](https://medium.com/bb-tutorials-and-thoughts/how-to-develop-and-build-angular-app-with-nodejs-e24c40444421)

## Command
* Docker
```
// Build
docker build -t angular-node-image .
// Run
docker run -d -p 3080:3080 --name angular-node-ui angular-node-image
// Enter container
docker exec -it angular-node-ui /bin/sh 
```