import { assertEquals } from "https://deno.land/std@0.97.0/testing/asserts.ts";
import { reverseArray } from "./challenge.ts"

Deno.test("Reverses the array elements", function(): void {
  const arr = [1, 4, 3, 2]
  assertEquals(reverseArray(arr), [2, 3, 4, 1])
})

Deno.test("Reverses the array elements", function(): void {
  const arr = [15, 22, 44, 1001]
  assertEquals(reverseArray(arr), [1001, 44, 22, 15])
})
