import test from 'node:test'
import assert from 'assert/strict'
import { minimumSwaps } from './index.js'

test('returns the minimum swap needed to sort the array', () => {
  const arr = [4, 3, 1, 2]
  assert.equal(minimumSwaps(arr), 3)
})
