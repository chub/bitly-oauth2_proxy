.PHONY: docker-image
docker-image:
        @sudo docker build -f ./Dockerfile -t bitly-oauth2_proxy:latest .
