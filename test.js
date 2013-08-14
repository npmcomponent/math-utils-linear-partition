var assert = require('assert')

var part = require('./linear_partition')

// Not sure how to test equality
assert.equal(
  part([9,2,6,3,8,5,8,1,7,3,4], 3).toString(),
  [[9,2,6,3],[8,5,8],[1,7,3,4]].toString()
)

process.exit()