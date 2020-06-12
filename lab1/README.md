# lab-db

Tested on Stack 2.1.3, GHC 8.6.5

To build and execute:
```
stack build --exec lab-db-exe
```
To run tests:
```
stack test
```

Requires PostgreSQL database, connection credentials and usage examples can be found in app/Main.hs file

Creation and insertion SQL scripts can be found in sql/ directory