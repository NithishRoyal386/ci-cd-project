FROM ubuntu:18.04

# 1. Running as root (no USER instruction) - critical
# 2. Using an EOL/outdated base image with known CVEs

# 3. Hardcoded secrets baked into image layers - critical
ENV DB_PASSWORD=SuperSecret123
ENV AWS_ACCESS_KEY_ID=AKIAABCDEFGHIJKLMNOP
ENV AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

# 4. Installing packages without version pinning + no cleanup (bloat + reproducibility issues)
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    openssh-server \
    sudo \
    vim

# 5. Copying secrets file directly into image - critical
COPY secrets.txt /app/secrets.txt

# 6. Setting overly permissive file permissions
RUN chmod -R 777 /app

# 7. Using ADD instead of COPY for a remote URL (SSRF/tampering risk)
ADD https://raw.githubusercontent.com/docker-library/hello-world/master/hello.c /app/some-script.sh

# 8. Enabling SSH inside a container (bad practice, increases attack surface)
RUN mkdir /var/run/sshd
EXPOSE 22

# 9. Hardcoded credentials for app user - critical
RUN useradd -m appuser && echo "appuser:password123" | chpasswd

# 10. No HEALTHCHECK defined
# 11. No explicit non-root USER - container runs as root by default

WORKDIR /app
COPY . .

# 12. Running with unnecessary elevated capabilities implied via privileged use later
CMD ["sudo", "./some-script.sh"]
