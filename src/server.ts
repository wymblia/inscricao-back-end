import express from "express"
import { router } from "./routes"
// import { Cors } from 'cors'
const cors = require("cors")

const app = express()

app.use(express.json())
app.use(cors())
app.use(router)

app.listen(4003, () => console.log("Server is runnin in port 4003"))