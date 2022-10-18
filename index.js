const express = require('express')
const morgan = require('morgan')
const routes = require('./src/routes')
const config = require('./src/config')

const app = express()
app.use(morgan('combined'))
app.use(express.json());

routes(app)

app.listen(config.PORT, () => {
    console.log(`Example app listening on port ${config.PORT}`)
})
