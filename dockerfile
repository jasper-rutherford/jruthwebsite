# 🧱 Stage 1: Use Node to build the Svelte app

# Use the official Node.js 23-slim image and name this build stage "builder"
FROM node:23-slim AS builder

# Set the working directory inside the container to /app
WORKDIR /app                     

# Copy all files from the current host directory (where the Dockerfile is) into /app
COPY . .                         

# Install dependencies and build the Svelte app. Output goes into /app/dist
RUN npm install && npm run build  

# 🚀 Stage 2: Use nginx to serve the built site

# Start a new, lightweight container using the Alpine nginx image
FROM nginx:alpine               

# Copy the built files from the "builder" stage into nginx's default web root
COPY --from=builder /app/dist /usr/share/nginx/html  

# Overwrite nginx's default config with our custom routing config
COPY nginx.conf /etc/nginx/conf.d/default.conf  
