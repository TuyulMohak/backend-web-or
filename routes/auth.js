// ACCESSIBLE FOR ALL USER

const express = require('express')
const router = express.Router()

const jwt = require('jsonwebtoken')
const { PrismaClient } = require('@prisma/client')
const bycript = require('bcrypt')
const prisma = new PrismaClient()

router.post('/register', async (req,res) => {
    try{
        const {email, username , password } = req.body
        const hashedPassword = await bycript.hash(password, 10)
        console.log(email, username,password)
        if(email == undefined || username == undefined || password == undefined){
            res.status(400)
        }
        const userCheck = await prisma.user.findFirst({
            where:{
                username:username
            }
        })
        if (userCheck === null){
            const user = await prisma.user.create({
                data:{
                    email: email, 
                    username: username,
                    password: hashedPassword
                }
            })
            // console.log(user)
            res.status(201).send("User Created")
        }
        else{
            res.status(400).send("Username/Email Already Used")
        }
    }catch(err){
        res.status(500).send(err)
    }
})

router.post('/login', async (req,res)=> {
    try{
        const {email, password} = req.body
        const user = await prisma.user.findFirst({
            where:{
                email: email,
            }
        })
        console.log(user)
        if (user == null){
            return res.status(400).send("cannot find user")
        }
        if(await bycript.compare(password, user.password)){
            const accessToken = jwt.sign(user, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '3600s'})
            res.json({
                accessToken: accessToken,
                authorizedAs: user.role
            })
        }else{
            res.status(401).send('not allowed')
        }
    }catch(err){
        res.status(500).send(err)
    }
})

module.exports = router