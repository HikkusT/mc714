const express = require('express')
const ip = require('ip')
const app = express()
const port = 8080

const server = app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

app.get('/health', (req, res) => {
  res.sendStatus(200)
})

app.get('/', (req, res) => {
  res.send(`Hello World from ${ip.address()} :p`)
})