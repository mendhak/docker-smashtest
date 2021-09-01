
Start the grid first.

    docker-compose -f docker-compose.grid.yml up

Then run the Smashtests against that grid

    docker-compose run --rm testrunner
