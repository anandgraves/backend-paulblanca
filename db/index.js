import { Pool } from 'pg'
import { parse } from 'pg-connection-string'
import { dbOptions } from '../config/dev'

const pool = new Pool(dbOptions)

export default {
  query: (text, params, callback) => {
    return pool.query(text, params, callback)
  }
}
