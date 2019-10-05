### Backend for equation calculator

Try this api on [Heroku](https://shrouded-mountain-95416.herokuapp.com/)

### How to run locally:

```
~$ bundle
~$ rails s
~$ curl -X POST -d '{"a":1.0,"b":1.0,"c":-6.0,"type":"quadratic"}' -H "Content-Type: application/json" http://localhost:3000/equations

Return: [2.0,-3.0]
```
### Examples for quadratic equation

```
curl -X POST -d '{"a":1.0,"b":1.0,"c":1.0,"type":"quadratic"}' -H "Content-Type: application/json" https://shrouded-mountain-95416.herokuapp.com/equations
Return: `No solutions`
```
