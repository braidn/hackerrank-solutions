export function stationFinder(n: number, c: number[]): number {
  const length = n
  let max = 0

  if (length == c.length) {
    return 0
  }

  const stations = c.sort((a, b) => a - b)

  for (var i = 0, len = stations.length - 1; i < len; i++) {
    const cities = stations[i + 1] - stations[i] - 1
    const distance = (Math.ceil(cities / 2.0))
    if (distance > max) {
      max = distance
    }
  }

  if (stations[0] - 0 > max) {
    max = stations[0] - 0
  }

  if (n - 1 - stations[c.length - 1] > max) {
    max = n - 1 - stations[c.length - 1]
  }

  return max
}
