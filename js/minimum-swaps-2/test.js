import test from 'node:test'
import assert from 'assert/strict'
import { minimumSwaps } from './index.js'

test('returns an integer that represents the minimum swap needed to sort the array', () => {
  const arr = [4, 3, 1, 2]
  assert.equal(minimumSwaps(arr), 3)
})

test('returns an integer that represents the minimum swap needed to sort the array', () => {
  const arr = [7, 1, 3, 2, 4, 5, 6]
  assert.equal(minimumSwaps(arr), 5)
})
