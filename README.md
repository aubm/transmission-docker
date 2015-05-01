## Build image

`docker build -t kendo5731/seedbox_transmission`

## Run a container

`docker run -d --name="transmission" -v /path/to/downloads:/download_dir -v /path/to/incomplete_dir:/incomplete_dir -p 9091:9091 -e RPC_USERNAME=username -e RPC_PASSWORD=password kendo5731/seedbox_transmission`
