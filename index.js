import express from 'express'
import productRouter from './src/resources/products'

// Create express instance
const app = express()

app.disable('x-powered-by')

app.use('/api/products', productRouter)

app.listen(7000)
console.log('App is running on port 7000')
