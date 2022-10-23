const config = require('../config')

module.exports = async (req, res) => {
    const data = {
        ...config,
        version: 1,
    }
    console.log(data)
    res.send(data)
}
