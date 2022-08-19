import { Router } from "express"
import { CreateLeadController } from "./controllers/CreateLeadController"

const router = Router()

const createLead = new CreateLeadController()

router.post("/api/leads", createLead.saveLead)

export { router }