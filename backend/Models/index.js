const {Sequelize, DataTypes} = require('sequelize')

const sequelize = new Sequelize('postgres://postgres:Jancok313313123@192.168.0.114:5434/aoi_db', {dialect: "postgres"})

sequelize.authenticate().then(() => {
    console.log(`Database connected to discover`)
}).catch((err) => {
    console.log(err)
})

const db = {}
db.Sequelize = Sequelize
db.sequelize = sequelize

//connecting to model
db.user = require('./userModel') (sequelize, DataTypes)

//exporting the module
module.exports = db