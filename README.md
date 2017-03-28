# rancher-cli in a container

Simple Alpine container with rancher-cli.


## Example usage

```
# Run rancher cli with special docker-compose file
docker run --rm -v $PWD:/data \
        -e RANCHER_URL=<rancher server url> \
        -e RANCHER_ACCESS_KEY=<rancher access key> \
        -e RANCHER_SECRET_KEY=<rancher secret key> \
        weahead/rancher-cli:0.4.1 up -f docker-compose.production.yml

```


## License

[X11](LICENSE)
