FROM python:3.7.3-stretch


RUN  mkdir -p /opt/app

WORKDIR /opt/app

COPY . .


RUN make setup


RUN make install
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013



EXPOSE 80
## Step 4:
# Expose port 80

ENTRYPOINT ["python3", "/opt/app/app.py"]
## Step 5:
# Run app.py at container launch

