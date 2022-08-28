import test from 'node:test'
import assert from 'assert/strict'
import { bubble } from "./index.js"

test('counts swaps and formats the output', () => {
  const arr = [3, 2, 1]
  const output = "Array is sorted in 3 swaps.\nFirst Element: 1\nLast Element: 3"
  assert.equal(bubble(arr), output)
})
