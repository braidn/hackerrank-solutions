export function bubble(arr) {
  let count = 0

  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        const swapTarget = arr[j + 1]

        arr[j+1] = arr[j]
        arr[j] = swapTarget

        count++
      }
    }
  }

  const last = arr[arr.length - 1]
  return `Array is sorted in ${count} swaps.\nFirst Element: ${arr[0]}\nLast Element: ${last}`
}
