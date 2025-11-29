import http from 'node:http'

const server = http.createServer((_, res) => {
    return res.end("Hello World")
})

server.listen(8000)