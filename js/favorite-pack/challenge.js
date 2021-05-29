const pack = Array(3)
let counter = 0
let oldest = 0

function add(item) {
  if (counter != 3) {
    pack[counter] = item
    counter ++
    oldest = pack.length - counter

    return
  }

  if (counter == 3) {
    pack[oldest] = item
    oldest ++

    return
  }
}

function remove() {
  if (pack.length == 0) {
    throw new Error('Empty pack')
  }

  removed = pack[oldest]
  pack.splice(oldest, 1)

  if ((pack.length - 1) >= 0) {
    oldest = pack.length - 1
  }
  counter = oldest

  return removed
}
