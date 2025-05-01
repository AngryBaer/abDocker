# setup prod
Practice project for Docker containers. Cleanly clone all repositories to my production directory.

## Usage
After building the Docker container mount the drive using the following pattern:
`docker run --rm -v "[root]/[prod-dir]":"/[prod-dir]" setup-prod [prod-dir]`

```bash
docker run --rm -v "P:/code":"/code" setup-prod code
```
