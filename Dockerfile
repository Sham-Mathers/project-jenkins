FROM node:alpine
COPY . .
RUN npm install
RUN npm fund
CMD ["npm","start"]
