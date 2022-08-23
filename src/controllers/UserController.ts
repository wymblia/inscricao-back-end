import { Request, Response } from "express"
import { prismaClient } from "../database/prismaClient" 

export class UserController {

    async saveUser(req: Request, res: Response) {

        const { username, complete_name, password, created_by } = req.body

        const usr = await prismaClient.user.create({
            data: {
                username,
                complete_name,
                password,
                created_by
            }
        })

        return res.json(usr)

    }

    async getConsulters(req: Request, res: Response) {

        const consulters = await prismaClient.user.findMany({
            /*Filtrar somente perfil comercial! */
        })
        
        return res.json(consulters)

    }

}
