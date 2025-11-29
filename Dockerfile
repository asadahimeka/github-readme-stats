FROM oven/bun:1
WORKDIR /app
COPY bun.lock .
COPY bunfig.toml .
COPY package.json .
RUN bun install --production
COPY . .
USER bun
ENV NODE_ENV production
CMD [ "bun", "express.js" ]
EXPOSE 3000
