export function minimumSwaps(arr) {
  const maxLength = arr.length;
  let swaps = 0;

  for (let i = 0; i < maxLength; i++) {
    const currentItem = arr[i];
    const targetItem = i + 1;

    if (currentItem !== targetItem) {
      const indexTarget = arr.indexOf(targetItem);

      arr[indexTarget] = currentItem;
      arr[i] = targetItem;
      swaps++;
      console.log(arr)
    }
  }

  return swaps;
}
