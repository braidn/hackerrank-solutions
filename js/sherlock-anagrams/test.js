import test from 'node:test'
import assert from 'assert/strict'
import { anagramCount } from "./index.js"

test('returns the anagrams', () => {
  const string = "abba"
  assert.equal(anagramCount(string), 4)
})

test('returns the anagrams', () => {
  const string = "abcd"
  assert.equal(anagramCount(string), 0)
})
