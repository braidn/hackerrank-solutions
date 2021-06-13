import { assertEquals } from "https://deno.land/std@0.98.0/testing/asserts.ts";
import { add, pack, remove } from "./challenge.ts";

Deno.test({
  name: "Adds to the pack",
  fn(): void {
    resetPack(pack);
    fillPack();

    assertEquals(pack, [4, 5, 6]);
  },
});

Deno.test({
  name: "Removes from the pack",
  fn(): void {
    resetPack(pack);
    fillPack();
    remove();

    assertEquals(pack, [5, 6]);
  },
});

Deno.test({
  name: "Removes the last item from the pack when adding > 3 items",
  fn(): void {
    resetPack(pack);
    fillPack();
    add(8);
    assertEquals(pack, [5, 6, 8]);
  },
});

function fillPack(): void {
  add(4);
  add(5);
  add(6);
}

function resetPack(pack: Array<number>): void {
  pack = Array(3);
}
