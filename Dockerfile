FROM node:12
ADD src/app.js /app.js

ENTRYPOINT ["node", "app.js"]
