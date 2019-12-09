import { Pool } from 'pg'
import { dbOptions } from '../src/config/dev'

const pool = new Pool(dbOptions)

export default {
  query: (text, params, callback) => {
    return pool.query(text, params, callback)
  }
}
