const sorter = (a, b) =>
  a.score > b.score ? 1 
    : a.score < b.score ? -1
      : a.name < b.name ? 1
        : a.name > b.name ? -1
          : 0

export function comparaTor(inputString) {
  let arr = []
  let players = ""
  const input = inputString.split('\n')
  for(let i=0; i<input.length;i++){
    let ob = input[i].split(' ')
    arr.push({name: ob[0], score: +ob[1]})
  }

  arr.sort(sorter).reverse().forEach(player => {
    players += player.name + " " + player.score + "\n"
  });

  return players.trimEnd()
}
