[This Docker image](https://hub.docker.com/r/mendhak/smashtest) contains the [Smashtest](https://github.com/smashtestio/smashtest) CLI.  

It is meant to be run as part of a local Docker development environment, or as part of a CI job, against a Selenium Grid. 

Example, if you've got your `.smash` files in the current directory and optionally a `smashtest.json`.  

```
# by default runs the `smashtest` command
docker run -v ${PWD}:/code --rm mendhak/smashtest  

# or be explicit
docker run -v ${PWD}:/code --rm mendhak/smashtest  smashtest
```

You can also use the same [command line arguments as Smashtest](https://smashtest.io/running-tests/command-line-options):

```
docker run -v ${PWD}:/code --rm mendhak/smashtest smashtest --help
```


## Samples

To run these samples, [clone this repo](https://github.com/mendhak/docker-smashtest), which provides a smashtest file, a smashtest.json, and some docker compose files.  


## Docker Compose sample, including a local Selenium Grid

Start the grid first.

```
docker-compose -f docker-compose.grid.yml up
```

Then run the Smashtests against that grid

```
docker-compose -f docker-compose.smashtest.yml run --rm testrunner
```

## Docker Run sample, including a local Selenium Grid

Start the grid first.

```
docker-compose -f docker-compose.grid.yml up
```

Then run the Smashtests against that grid

```
docker run -it --network seleniumgrid  -v ${PWD}:/code --rm mendhak/smashtest
```

## Motivation

I've created this image because an official one isn't provided.    
I didn't want to install the package globally as it's [a bad practice](https://code.mendhak.com/npm-install-globally-is-bad/).   
I wanted to save time on installing the package locally on each test run by just using a container.  
