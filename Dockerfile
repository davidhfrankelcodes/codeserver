FROM lscr.io/linuxserver/code-server:latest

# Install Python
RUN apt-get update && apt-get install -y python3 pip
#RUN pip install virtualenv
RUN apt-get update && apt-get install -y python3-virtualenv

# Install neofetch
RUN apt-get update && apt-get install -y neofetch

# Install other fun things
RUN apt-get update && apt-get install -y \
    htop wget ripgrep bat

# Expose port 5000 for Flask app
EXPOSE 5000
