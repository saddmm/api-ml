FROM node:16-alpine

WORKDIR /app

RUN npm install

COPY . .


ENV PORT=8080
ENV MODEL_URL=https://storage.googleapis.com/themodels/model/model.json
ENV PROJECT_ID=submissionmlgc-saddam
ENV GOOGLE_APPLICATION_CREDENTIALS=/credentials/service-account-key.json
ENV DB=default

CMD ["npm", "start"]

