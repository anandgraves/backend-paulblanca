import { Router } from 'express'
import db from '../../db/index'
const router = Router()

router.get('/products', async function(req, res) {
  const query = {
    name: 'fetch-products',
    text: 'SELECT * FROM products ORDER BY id LIMIT 20'
  }

  try {
    const dbResponse = await db.query(query)
    res.json(dbResponse.rows)
  } catch (error) {
    console.error('oops, db foutje', error)
  }
})

router.get('/products/:productId', async function(req, res) {
  const productId = req.params.productId
  const query = {
    name: 'fetch-product',
    text: `SELECT * FROM products WHERE id=${productId}`
  }

  try {
    const dbResponse = await db.query(query)
    res.json(dbResponse.rows[0])
  } catch (error) {
    console.error('oops, db foutje', error)
  }
})

module.exports = router
