// ACCESSIBLE FOR SUPERADMIN
// fungsinya biar SUPERADMIN bisa get(read)-ambil data semua user, update(put)-mengubah validationStatus

const express = require('express')
const router = express.Router()

const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()
const middleware = require('../middlewares/index')

router.get('/', middleware.authenticateToken, async (req, res)=>{
    try{
        const user = req.user
        if(user.role !== "superadmin"){
            res.status(401).send("forbidden")
        }
        const users = await prisma.user.findMany({
            where: {
                role: "peserta"
            }
        })
        res.json(users)
    }catch(err){
        res.send(err)
    }
})

router.post('/validate', middleware.authenticateToken, async (req,res)=> {
    try{
        const user = req.user
        const {userId} = req.body
        //console.log(userId)
        if(user.role !== "superadmin"){
            res.status(401).send("forbidden")
        }
        const validation = await prisma.profile.update({
            where: {
                userId: userId
            },
            data: {
                validationStatus: true
            }
        })
        res.status(201).send("user validated")
    }catch(err){
        res.send(err)
    }
})

module.exports = router