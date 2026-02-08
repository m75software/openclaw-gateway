FROM node:latest
ENV NODE_ENV=production
ARG OPENCLAW_GATEWAY_BIND=lan
USER node
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --no-onboard;
CMD ["sh", "-c", "/home/node/.npm-global/bin/openclaw gateway --bind ${OPENCLAW_GATEWAY_BIND}"]