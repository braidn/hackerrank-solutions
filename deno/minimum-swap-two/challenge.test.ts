import { assertEquals } from "https://deno.land/std@0.97.0/testing/asserts.ts";
import { minimumSwaps } from "./challenge.ts"

Deno.test({
  name: "Finds the minimum swaps to a ascending list of integers",
  only: true,
  fn(): void {
    const arr = [4, 3, 1, 2]
    assertEquals(minimumSwaps(arr), 3)
  }
})

Deno.test({
  name: "Finds the minimum swaps to a ascending list of integers",
  fn(): void {
    const arr = [2, 3, 4, 1, 5]
    assertEquals(minimumSwaps(arr), 3)
}})

Deno.test({
  name: "Finds the minimum swaps to a ascending list of integers",
  fn(): void {
    const arr = [1, 3, 5, 2, 4, 6, 7]
    assertEquals(minimumSwaps(arr), 3)
}})
