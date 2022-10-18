const indexHandler = require('./handlers/index')

module.exports = function routes(app) {
    app.get('/', indexHandler)
}
