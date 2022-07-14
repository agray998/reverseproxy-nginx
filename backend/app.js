const express = require('express')
const app = express()
const port = 3000

app.get('/backend/date', (req, res) => res.send(Date()))

app.listen(port, () => console.log(`API Server is listening on port ${port}`))
