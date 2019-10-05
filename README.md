### Backend for equation calculator

Try this api on [Heroku](https://shrouded-mountain-95416.herokuapp.com/)

### How to run locally:

```
~$ bundle
~$ rails s

For quadratic equation:
~$ curl -X POST -d '{"a":1,"b":1,"c":-6,"type":"quadratic"}' -H "Content-Type: application/json" http://localhost:3000/equations
Return: [2.0,-3.0]

For linear equation:
~$ curl -X POST -d '{"a":0,"b":0,"type":"linear"}' -H "Content-Type: application/json" http://localhost:3000/equations
Return: Infinite
```
### Examples for quadratic equation

```
curl -X POST -d '{"a":1,"b":1,"c":1,"type":"quadratic"}' -H "Content-Type: application/json" https://shrouded-mountain-95416.herokuapp.com/equations
Return: No solutions
```
### Examples for linear equation

```
curl -X POST -d '{"a":1,"b":-2,"type":"linear"}' -H "Content-Type: application/json" https://shrouded-mountain-95416.herokuapp.com/equations
Return: [2.0]
```
