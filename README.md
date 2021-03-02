# Pinterest식 카드형 레이어 SNS 서비스

# 🔗배포 URL
http://dev.eliotink.shop

# ⚒️개발환경
- Pycharm
- Django
- Portainer
- GitHub

# 👨‍💻기술스택
- Django
- MySQL
- GCP VM
- Docker
- Docker Swarm

# 🔍참고

## Let's Encrypt 설정

docker run -it --rm --name certbot \
-v '/etc/letsencrypt:/etc/letsencrypt' \
-v '/var/lib/letsencrypt:/var/lib/letsencrypt' \
certbot/certbot certonly -d '*.eliotink.shop' --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory