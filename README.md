# Rocker {metaflow}

A Docker image based on [rocker/verse](https://hub.docker.com/r/rocker/verse) with [metaflow](https://docs.metaflow.org/v/r/) installed and ready to try out.

## Usage

metaflow is installed for the `rstudio` user. 

```
docker run --rm -d -p 8787 :8787 -e PASSWORD='password' grrrck/rocker-verse-metaflow:latest
```

If you [change the user name](https://www.rocker-project.org/use/managing_users/) of the container, when you first log in you may need to run

```r
metaflow::install()
```

and then restart the R session.

### Test the installation

Check that the installation worked by running:

```r
Sys.setenv("USERNAME" = 'mfuser')
metaflow::test()
```

