# Docker Next.js

This is a simple example of how to use Docker with Next.js.

> Tip: See `./Dockerfile` and `./docker-compose.yml` in this repo for more details
>
> Note: Before running the commands below, make sure you have [Docker](https://docs.docker.com/get-docker/) installed on your machine

## How to use

### Development

- Build the image with `docker-compose build`, then run:

```bash
docker-compose up

# or, watch for changes
docker-compose watch
```

> Note: The app will be available at `http://localhost:3000`

### Production

- Build the image with `docker build -t APP-NAME .`, then run:

```bash
docker run -p 3000:3000 APP-NAME
```

> Note: The app will be available at `http://localhost:3000`
>
> Note: `APP-NAME` is the name of the image, you could choose the name of this repo: `docker-nextjs`

### Stop the container

- To stop the container, run:

```bash
# development
docker-compose down

# production
docker stop CONTAINER-ID
# or simply go to the Docker Desktop app and stop the container there
```

> Note: You can get the `CONTAINER-ID` by running `docker ps`

### Remove the container

- To remove the container, run:

```bash
# development
docker-compose down -v

# production
docker rm CONTAINER-ID
# or simply go to the Docker Desktop app and remove the container there
```

## License

- [MIT](LICENSE.md)
