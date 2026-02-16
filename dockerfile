FROM node:latest
ENV NODE_ENV=production
RUN apt-get update && apt-get install -y tesseract-ocr poppler-utils python3-pip python3-pillow && rm -rf /var/lib/apt/lists/*
USER node
RUN python3 -m pip install --user --break-system-packages pytesseract pillow pdf2image
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --no-onboard;
CMD ["/home/node/.npm-global/bin/openclaw", "gateway"]