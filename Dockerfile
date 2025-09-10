FROM n8nio/n8n:latest

# Set environment variables
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://your-app-name.up.railway.app/
ENV GENERIC_TIMEZONE=UTC

# Create workflows directory
RUN mkdir -p /home/node/.n8n/workflows

# Copy your workflow JSON
COPY workflows/ /home/node/.n8n/workflows/

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"] 
