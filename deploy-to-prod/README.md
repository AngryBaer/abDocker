# abDeploy
Practice project for Docker containers. Deploy code to my production directory.

## Usage
After building the Docker container mount the drive using the following pattern:
`docker run --rm -v "[root]/[prod-dir]":"/[prod-dir]" deploy-to-prod [prod-dir] [repo1] [repo2]...`

```bash
docker run --rm -v "P:/code":"/code" deploy-to-prod code myRepo
```
