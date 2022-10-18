const config = require('../config')

module.exports = async (req, res) => {
    console.log(config)
    res.send(config)
}
