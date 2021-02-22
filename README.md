# Let's Encrypt 설정
docker run -it --rm --name certbot \
  -v '/etc/letsencrypt:/etc/letsencrypt' \
  -v '/var/lib/letsencrypt:/var/lib/letsencrypt' \
  certbot/certbot certonly -d '*.eliotink.shop' --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory