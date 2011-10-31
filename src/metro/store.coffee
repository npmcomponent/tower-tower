# Stores are the interface models use to find their data.
Metro.Store =
  defaultLimit: 100

  reservedOperators:
    "_sort":  "_sort"
    "_limit": "_limit"
  
  queryOperators:
    ">=":       "gte"
    "gte":      "gte"
    ">":        "gt"
    "gt":       "gt"
    "<=":       "lte"
    "lte":      "lte"
    "<":        "lt"
    "lt":       "lt"
    "in":       "in"
    "nin":      "nin"
    "any":      "any"
    "all":      "all"
    "=~":       "m"
    "m":        "m"
    "!~":       "nm"
    "nm":       "nm"
    "=":        "eq"
    "eq":       "eq"
    "!=":       "neq"
    "neq":      "neq"
    "null":     "null"
    "notNull":  "notNull"

require './store/cassandra'
require './store/local'
require './store/memory'
require './store/mongo'
require './store/postgresql'
require './store/redis'

module.exports = Metro.Store