FROM node:20-slim
RUN corepack enable
RUN corepack use pnpm@9
RUN pnpm install
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
