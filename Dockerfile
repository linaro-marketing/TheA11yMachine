FROM node:latest
# NPM Config
ENV NPM_CONFIG_LOGLEVEL=warn \
    NPM_CONFIG_PROGRESS=false \
    NPM_CONFIG_SPIN=false
# Create our working directory
WORKDIR /app
# Copy the app source
COPY . /app
# Add the local lib folder to the NODE_PATH
ENV NODE_PATH="/app/lib:${NODE_PATH}"
# Add a11y tools to path
ENV PATH="/app/tools:${PATH}"
# Install all dependencies in package.json
RUN npm install
