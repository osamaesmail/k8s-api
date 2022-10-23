const config = require('../config')

module.exports = async (req, res) => {
    console.log({
        ...config,
        version: 1,
    })
    res.send(config)
}
