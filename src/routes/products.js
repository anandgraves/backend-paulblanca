import { Router } from 'express'
import db from '../../db/index'
const router = Router()

router.get('/products', async function(req, res, next) {
  const q = {
    // give the query a unique name
    name: 'fetch-products',
    text: 'SELECT * FROM products',
  }
  try {
    const dbResponse = await db.query(q)
  res.json(dbResponse.rows)
  }
  catch(error) {
    console.error('oops, db foutje', error)
  }
})

module.exports = router
