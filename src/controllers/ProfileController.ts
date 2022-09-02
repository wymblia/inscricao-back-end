import { Request, Response } from "express"
import { prismaClient } from "../database/prismaClient" 

export class ProfileController {

    async saveProfile(req: Request, res: Response) {

        const { name, description, created_by } = req.body

        const profile = await prismaClient.profile.create({
            data: {
                name,
                description,
                created_by
            }
        })

        return res.json(profile)

    }

}