export let pack = Array(3);
let counter = 0;

export function add(item: number) {
  if (counter != 3) {
    pack[counter] = item;
    counter++;

    return;
  }

  if (counter == 3) {
    pack[pack.length - 1] = item;

    return;
  }
}

export function remove() {
  if (pack.length == 0) {
    throw new Error("Empty pack");
  }

  if ((pack.length - 1) >= 0) {
    counter = pack.length - 1;
  }

  const removed = pack[0];
  pack.splice(0, 1);

  return removed;
}
