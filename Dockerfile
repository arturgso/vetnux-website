# Build stage
FROM node:22-alpine AS build

WORKDIR /app

# Copy package files
COPY package*.json yarn.lock ./

# Install dependencies (including dev dependencies for build)
RUN yarn install --frozen-lockfile

# Copy source code
COPY . .

# Set build-time environment variables
ARG VITE_API_BASE_URL
ENV VITE_API_BASE_URL=$VITE_API_BASE_URL

# Build the application
RUN yarn build

# Production stage
FROM node:22-alpine AS production

WORKDIR /app

# Install serve globally to serve the built files
RUN yarn global add serve

# Copy built files from build stage
COPY --from=build /app/dist /app/dist

# Expose port
EXPOSE 3000

# Start the application
CMD ["serve", "-s", "dist", "-l", "3000"]
