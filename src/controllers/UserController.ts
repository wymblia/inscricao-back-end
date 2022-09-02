import { Request, Response } from "express"
import { prismaClient } from "../database/prismaClient" 

export class UserController {

    async saveUser(req: Request, res: Response) {

        const { user_name, password, created_by } = req.body

        const usr = await prismaClient.user.create({
            data: {
                user_name,
                password,
                created_by
            }
        })

        return res.json(usr)

    }

}
