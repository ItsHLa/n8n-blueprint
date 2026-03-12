FROM n8nio/n8n:latest

# Set environment variables for strict 512MB memory limit
ENV NODE_OPTIONS="--max-old-space-size=380"

# Ensure the container listens on the correct port and host
ENV N8N_PORT=10000
ENV N8N_HOST=0.0.0.0

# The default entrypoint for n8nio/n8n is already good, 
# but we can explicitly set it to ensure it uses the custom node options if needed.
# However, the official image handles this well.
