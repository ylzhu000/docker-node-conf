# lead to much slimmer image comparing to node image itself
FROM node:alpine

# Put all files under app folder
WORKDIR /app

# Copy package.json first to aviod reinstall process
COPY ./package.json ./

# Usually webpack is used to generate static assest
RUN npm run build

# Copy rest of the files 
COPY ./ ./ 

CMD ["npm", "run", "start"]