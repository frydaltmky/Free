FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# تشغيل Shellinabox بصلاحيات root تلقائياً
CMD ["/usr/bin/shellinaboxd", "--disable-ssl", "-s", "/:root:root:/bin/bash", "--no-beep"]
