# base node image (alpine- light)
FROM node:alpine
 
# docker local path - working direcotry
WORKDIR /usr/app

# copy package dependency file first (to speedup build and use cahce for npm install )
COPY ./package.json ./

# dependencies
RUN npm install

# copy local project repo into docker
COPY ./ ./


# default commands
CMD ["npm", "start"]