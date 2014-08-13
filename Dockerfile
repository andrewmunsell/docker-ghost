## Dockerfile for the Ghost blogging platform
## with additional configuration options provided through
## environmental variables
FROM dockerfile/ghost

# Remove the old configuration provided by dockerfile/ghost
RUN rm /ghost/config.js

# Add the configuration
ADD config.js /ghost/config.js

# Define default command.
CMD ["bash", "/ghost-start"]

# Expose ports.
EXPOSE 2368
