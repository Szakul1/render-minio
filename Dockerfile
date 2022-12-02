FROM minio/minio:latest

COPY entrypoint.sh /opt/render/entrypoint.sh
RUN chmod +x /opt/render/entrypoint.sh

COPY avatar1.png /data/discord/avatars/avatar1.png

ENTRYPOINT ["/opt/render/entrypoint.sh"]
