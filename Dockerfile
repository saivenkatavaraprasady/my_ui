# 1️⃣ Choose base image (Node.js)
FROM node:20

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy package.json and package-lock.json first
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy the rest of your app code
COPY . .

# 6️⃣ Expose the port your app runs on
EXPOSE 3000

# 7️⃣ Command to start the app
CMD ["node", "app.js"]

