export function minimumSwaps(arr) {
  const maxLength = arr.length;
  let swaps = 0;

  for (let i = 0; i < maxLength; i++) {
    const currentItem = arr[i];
    const targetItem = i + 1;

    if (currentItem !== targetItem) {
      let indexTarget;
      for (let inner = 0; inner < arr.length; inner++) {
        if (arr[inner] == targetItem) {
          indexTarget = inner
          break;
        }
      }
      arr[indexTarget] = currentItem;
      arr[i] = targetItem;
      swaps++;
    }
  }

  return swaps;
}
