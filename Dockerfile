FROM badouralix/curl-jq:latest

COPY repo//check /opt/resource/check
COPY repo/in /opt/resource/in
COPY repo//out /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
