# Get the python image
FROM python:3.10

# Switch to app directory
WORKDIR /devenv

# Copy the requirements in to the app
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything else
COPY . .
