from nginx:latest
maintainer svilambi@gmail.com
run apt install -y curl
copy index.html /usr/share/nginx/html/
healthcheck cmd curl --fail http://localhost || exit
cmd ["nginx", "-g", "daemon off;"]
