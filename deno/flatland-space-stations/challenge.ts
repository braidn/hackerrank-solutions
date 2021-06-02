export function stationFinder(n: number, c: number[]): number {
  const length = n
  let distance = 0
  let count = 0

  if (length == c.length) {
    return 0
  }

  const path = new Array(length)

  for (var i = 0, len = path.length; i < len; i++) {
    if (c.lastIndexOf(i) != -1) {
      path[i] = 1
    } else {
      path[i] = 0
    }
  }

  for (var i = 0, len = path.length; i < len; i++) {
    if (path[i] == 1 && i >= 0) {
      count ++
    }
    if (count >= 1 && path[i] == 0) {
      count ++
    }
    if (count > 0 && path[i] == 1) {
      const traversed = Math.round(count / 2) - 1
      distance = traversed > distance ? traversed : distance
    }
    if (count > 0 && path[i] == path[-1]) {
      const traversed = Math.round(count / 2) - 1
      distance = traversed > distance ? traversed : distance
    }
  }

  return distance
}
