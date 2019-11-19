import express from 'express'

// Create express instance
const app = express()

// Require API routes
const products = require('./routes/products')

// Import API Routes
app.use(products)

app.disable('x-powered-by')

app.listen(7000)
console.log('App is running on port 7000')

