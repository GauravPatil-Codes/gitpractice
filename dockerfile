from node

# install dependencies
COPY package.json package-lock.json ./
RUN npm install

# copy source code
COPY . .

# build app
RUN npm run build

# run app
EXPOSE 3000
CMD ["npm", "start"]
