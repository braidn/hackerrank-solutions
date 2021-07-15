export function minimumSwaps(arr: Array<number>): number {
  const totalLength = arr.length
  let swapCount = 0

  for(let counter = 0; counter <= totalLength -1; counter ++) {
    if (arr[counter] > arr[counter + 1]) {
      let toAdd = arr.splice(counter, 1)[0]
      arr.splice(arr[counter], 0, toAdd)

      swapCount ++
      counter = -1;continue
    }
  }

  return swapCount
}
