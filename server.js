require("dotenv").config()

// const middleware = require('./middlewares/index')
const express = require('express')
// const jwt = require('jsonwebtoken')
const app = express()
const { PrismaClient } = require('@prisma/client')
// const bycript = require('bcrypt')
const prisma = new PrismaClient()

app.use(express.json())

const authRoute = require('./routes/auth')
const usersRoute = require('./routes/users')
const profileRoute = require('./routes/profile')

app.use('/auth', authRoute)
app.use('/users', usersRoute)
app.use('/profile', profileRoute)

app.listen(3000, ()=> console.log("🚀 Server ready at: http://localhost:3000"))
