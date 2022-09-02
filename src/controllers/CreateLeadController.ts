import { Request, Response } from "express"
import { prismaClient } from "../database/prismaClient"

export class CreateLeadController {

    async saveLead(req: Request, res: Response) {
        
        const { complete_name, social_name, email, phone } = req.body

        const lead = await prismaClient.lead.create({
            data: {
                complete_name,
                social_name,
                email,
                phone
            }
        })

        return res.json(lead)
    }
}