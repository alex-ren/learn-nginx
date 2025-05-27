docker run --name mynginx -v ${PWD}/html:/usr/share/nginx/html:ro -P -d nginx
docker run --name mynginx --mount type=bind,source=${PWD}/html,target=/usr/share/nginx/html,readonly -p 80:80 -d nginx


docker build -t alex2ren/mynginx_simple_server .
docker push alex2ren/mynginx_simple_server



docker build -f Dockerfile_echo_path -t alex2ren/mynginx_echo_server .
docker push alex2ren/mynginx_echo_server
docker run --name mynginx --mount type=bind,source=${PWD}/html,target=/usr/share/nginx/html,readonly -p 8021:8021 -d alex2ren/mynginx_echo_server


docker run --name mynginx -p 8021:8021 -d alex2ren/mynginx_simple_server
