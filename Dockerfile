FROM python:3.9-slim
COPY . /git-action-alerts
WORKDIR /git-action-alerts
RUN pip install --target=/git-action-alerts twilio
RUN chmod +x /git-action-alerts/run.py
CMD ["python3.9", "/git-action-alerts/run.py"]
