## confd-base Docker Image

#### Purpose
This is a base Onbuild image for quickly setting up [confd](https://github.com/kelseyhightower/confd) containers.

#### Usage

Create Dockerfile
```
FROM rancher/confd-base
VOLUME /my/config/paths
```

Create conf.d and templates directories and add files
```
mkdir templates conf.d
```

Add config toml files to conf.d and the template in the templates directory. When you are ready to create your image build:

```
docker build --rm -t myimage .
```

The resulting image will be configured to run confd with the files in these directories. 

**Note:** Remember to write your files to an exported volume, otherwise the configs might not help you.