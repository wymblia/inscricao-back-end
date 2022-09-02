import { Router } from "express"
import { CreateLeadController } from "./controllers/CreateLeadController"
import { UserController } from "./controllers/UserController"
import { ProfileController } from "./controllers/ProfileController"
import { UserProfileController } from "./controllers/UserProfileController"

const router = Router()

const createLead = new CreateLeadController()
const user = new UserController()
const profile = new ProfileController()
const userProfile = new UserProfileController()


router.post("/api/leads", createLead.saveLead)

router.post("/api/user", user.saveUser)
router.get("/api/get-consulters", user.getConsulters)

router.post("/api/profile", profile.saveProfile)
// router.get("/api/profile", createUser.saveUser)

router.post("/api/:user_id/:profile_id", userProfile.saveUserProfile)
// router.get("/api/:user_id/:profile", createUser.saveUser)


export { router }