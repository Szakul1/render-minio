FROM minio/minio:latest

COPY entrypoint.sh /opt/render/entrypoint.sh
RUN chmod +x /opt/render/entrypoint.sh

ENTRYPOINT ["/opt/render/entrypoint.sh"]

FROM minio/mc:latest

COPY avatar1.png /opt/render/avatar1.png

ENTRYPOINT ["mc", "mb", "discord"]

ENTRYPOINT ["mc", "cp", "/opt/render/avatar1.png", "discord/avatars"]
