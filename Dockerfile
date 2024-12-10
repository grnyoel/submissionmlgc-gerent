FROM node:20
WORKDIR /app
ENV PORT 8080
ENV MODEL_URL 'https://storage.googleapis.com/bucket-mlgc-gerent2/model-in-prod/model.json'
COPY . .
RUN npm install
EXPOSE 8080
CMD [ "npm", "run", "start"]