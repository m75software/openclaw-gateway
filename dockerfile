FROM node:latest
ENV NODE_ENV=production
USER node
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --no-onboard;
CMD ["/home/node/.npm-global/bin/openclaw", "gateway", "run"]