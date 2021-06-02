import { assertEquals } from "https://deno.land/std@0.97.0/testing/asserts.ts";
import { stationFinder } from "./challenge.ts"

let result = 0

Deno.test("Finds the maximum amount of space between a city and space station with a sorted number of stations", function(): void {
  result = stationFinder(5, [0, 4])
  assertEquals(result, 2)
})

Deno.test("Finds the maximum amount of space between a city and space station with an unsorted number of stations", function(): void {
  result = stationFinder(20, [13, 1, 11, 10, 6])
  assertEquals(result, 6)
})

Deno.test("Finds the maximum amount of space between a big array", function(): void {
  result = stationFinder(100, [93, 41, 91, 61, 30, 6, 25, 90, 97])
  assertEquals(result, 14)
})

Deno.test("Returns 0 when there is a station at each city", function(): void {
  result = stationFinder(6, [0,1,2,3,4,5])
  assertEquals(result, 0)
})
