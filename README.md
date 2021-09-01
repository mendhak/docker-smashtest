This Docker image contains the [Smashtest](https://github.com/smashtestio/smashtest) CLI.

## Sample

Start the grid first.

    docker-compose -f docker-compose.grid.yml up

Then run the Smashtests against that grid

    docker-compose -f docker-compose.smashtest.yml run --rm testrunner
