export function smooth(array, size) {
  const chunk_size = array.length / size;
  if (chunk_size > array.length) return array

  let chunks = [], out = []
  for (let i = 0; i < array.length; i+=chunk_size) {
      chunks.push(array.slice(i, i+size))
  }
  chunks.forEach(chunk => {
      let sum = 0
      chunk.forEach(item => {
          sum += item.value
      })
      let avg = sum / chunk.length
      out.push({value: avg, time: chunk[0].time})
  })
  return out
}