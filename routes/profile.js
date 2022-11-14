// ACCESSIBLE FOR PESERTA OR
// fungsinya biar peserta OR bisa get(read), post(create), update(put)

const express = require('express')
const router = express.Router()
const middleware = require('../middlewares/index')

const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

//taking the profile
router.get('/', middleware.authenticateToken, async (req,res)=> {
    try{
        const user = req.user
        const userData = await prisma.profile.findFirst({
            where:{
                userId:user.id
            },
            include: {user: true}
        })
        res.json(userData)
    }catch(err){
        res.status(500)
    }
})

//posting the profile for the first time
router.post('/', middleware.authenticateToken, async (req,res)=> {
    try{
        const { role, id } = req.user
        if(role !== 'peserta'){
            res.status(401).send("Unauthorized")
        }
        const {nama, nim, divisi}  = req.body

        const checkUser = await prisma.user.findFirst({
            where: {
                id: id
            }
        })

        if (checkUser === null){
            res.status(404)
        }
        console.log(id, nama, divisi, nim)
        const addedProfile = await prisma.profile.create({
            data: {
                nama: nama,
                nim: nim,
                divisi: divisi,
                user: {
                    connect: {
                        id:id
                    }
                }
            }, 
        })
        res.status(201).send("data added")
    }
    catch (err){
        res.status(err)
    }
})

//updating profile
router.put('/', middleware.authenticateToken, async (req,res)=> {
    try{
        const {role, id} = req.user
        const {nama, nim, divisi} = req.body
        if(role !== 'peserta'){
            res.status(401).send("forbidden")
        }
        const user = await prisma.profile.update({
            where:{
                userId: id
            },
            data: {
                nama,
                nim,
                divisi
            }
        })
        console.log(user)
        res.status(204).send("Data Updated")
    }
    catch (err){
        res.status(500).send(err)
    }
})

module.exports = router



// "tempatLahir": "jambi",  //String
//     "tanggalLahir": "2001-07-07", //DateTime
//     "jenisKelamin": "laki-laki", //String
//     "alamatPadang": "iri gasi", //String
//     "alamatAsal": "jambi",   //String

//     "noHp": 1,            //Int
//     "agama": "islam",           //String
//     "citaCita": "presiden",        //String
//     "riwayatPenyakit": "gaada", //String
//     "merkLaptop": "lenovo",      //String
//     "processor":"celeron",       //String
//     "ram": "4gb",             //String
//     "vga": "gatau"             //String'


// data: {
//     userId: id,
//     nama,     
//     nim, 
//     divisi,
//     subdivisi,
//     fakultas,
//     jurusan, 

//     tempatLahir,
//     tanggalLahir,
//     jenisKelamin,
//     alamatPadang,
//     alamatAsal,  

//     noHp,        
//     agama,       
//     citaCita,    
//     riwayatPenyakit,
//     merkLaptop,     
//     processor,      
//     ram,            
//     vga  
// }