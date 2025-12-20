FROM node:18

WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

COPY . .

# Set the PORT environment variable
ENV PORT=4000

EXPOSE 4000

CMD ["npm", "start"]

