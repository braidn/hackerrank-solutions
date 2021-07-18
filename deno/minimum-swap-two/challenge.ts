export function minimumSwaps(arr: Array<number>): number {
  const totalLength = arr.length - 1
  let swapCount = 0

  const minItem = arr.reduce((prev, next) => prev < next ? prev : next)

  if (arr.indexOf(minItem) != 0) {
    let toAdd = arr.splice(arr.indexOf(minItem), 1)[0]
    arr.splice(0, 0, toAdd)
    swapCount ++
  }

  for(let counter = 1; counter <= totalLength; counter ++) {
    if(Math.abs(arr[counter] - minItem) != counter) {
      let toAdd = arr.splice(arr[minItem + counter], 1)[0]
      arr.splice(toAdd - counter, 0, toAdd)

      swapCount ++
    }
  }

  return swapCount
}
