import { Request, Response } from "express"
import { prismaClient } from "../database/prismaClient"

export class CreateLeadController {

    async saveLead(req: Request, res: Response) {
        
        const { firstName, lastName, email, phone } = req.body

        const lead = await prismaClient.lead.create({
            data: {
                firstName,
                lastName,
                email,
                phone
            }
        })

        return res.json(lead)
    }
}