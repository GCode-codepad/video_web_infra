## Building the Project

To build the project and install the Maven artifacts (skipping tests), run:

```bash
mvn clean install -DskipTests
```

## Running the Services

To build and start all services using Docker Compose, execute:
```bash
docker-compose up --build
```

## Testing Service

To test all services, execute:
```bash
mvn test
```
