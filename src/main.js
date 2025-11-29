import http from 'node:http'

import dotevn from 'dotenv'

dotevn.config()

const server = http.createServer((_, res) => {
    console.log({APP_COOL_SECRET: process.env.APP_COOL_SECRET })
    return res.end("Hello World")
})

server.listen(8000)