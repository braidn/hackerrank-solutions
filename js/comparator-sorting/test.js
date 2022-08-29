import test from 'node:test'
import assert from 'assert/strict'
import { comparaTor } from "./index.js"

test('sorts the array and returns a string from highest to lowest', () => {
  const inputString = "amy 100\ndavid 100\nheraldo 50\naakansha 75\naleksa 150"
  const outputString = "aleksa 150\namy 100\ndavid 100\naakansha 75\nheraldo 50" 

  assert.equal(comparaTor(inputString), outputString)
})
