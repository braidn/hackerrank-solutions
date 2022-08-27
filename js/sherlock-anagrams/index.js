const subString = (string, cord1, cord2) => string.substring(cord1,cord2).split('').sort().join('')

export function anagramCount (string) {
  let count = 0
  let map = new Map()

  for (let i = 0; i < string.length; i++) {
    for (let j = i+1; j <= string.length; j++) {
      const partial = subString(string, i, j)

      if (map.has(partial)) {
        count += map.get(partial)
        map.set(partial, map.get(partial) + 1)
      } else {
        map.set(partial, 1)
      }
    }
  }
  return count
}
