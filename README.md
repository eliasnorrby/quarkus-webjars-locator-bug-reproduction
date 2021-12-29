# quarkus-webjars-locator bug recreation

## Default root path

Start the app the default root path ("/"):

```
./mvnw quarkus:dev
```

Try to access the `jquery-ui.min.js` with and without version specified:

```sh
./curl_webjar.sh
```

Results:

```
curl with version
200
curl without version
200
```

## Custom root path

Start the app with another root path ("/app"):

```
./mvnw quarkus:dev -Dquarkus.http.root-path=/app
```

Try to access the `jquery-ui.min.js` with and without version specified:

```sh
./curl_webjar.sh /app
```

Results:

```
curl with version
200
curl without version
404
```
