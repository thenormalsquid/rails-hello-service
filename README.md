### HOLA WORLD
---
**Goal** Create a simple service, with RESTful/Json endpoints written in RoR to test internal and external endpoint configurations in aptible.

Inspired by (Hello-service)[https://github.com/aliwatters/hello-service]

The service only accepts `application/vnd.api+json` mimetype to meet the (json api specs)[https://jsonapi.org/format/]

#### Requirements
- All endpoints on the service must not be exposed to the public.
- Service must have tests
- Service must have linting
- Service must only accept application/json as a valid mimetype
- Service restful api must be versioned
- Service must meet the json api spec

#### How to run
**Development setup**
1. Set the following envvars in a `.env` file:
- `POSTGRES_USER=dev`
- `POSTGRES_PASSWORD`
- `POSTGRES_DB=dev`
- `POSTGRES_HOST=database`
2. `docker-compose up -d`

**Tests**
1. Make sure the docker container is up, with `docker-compose up -d`
2. `docker exec -it <microservice container name> rails test`

#### Endpoints
- `/hola` - responds with a friendly message
- `/status`- heartbeat to let us know if the service is ok

#### What's in the box
- rubocop - linting
- swagger - documentation (wip)

#### Future ideas
- Implement queues to pass messages asynchronously across different services (e.g; posting to /create_message endpoint enqueues a new message)
- Implement circuit breaker pattern in BFF

#### Todo
1. Create + configure CI build pipeline
1. Create new aptible app in the `sandbox` environment
1. Configure internal endpoint w/ port
1. Configure external endpoint w/ port
1. Config CI to deploy aptible app

