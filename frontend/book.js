const searchParams = new URLSearchParams (window.location.search) 
const book_id = searchParams.get("id")
const characterList = document.getElementById('characters')

fetch(`http://localhost:3000/books/${book_id}`)
  .then(response => response.json())
  .then(result => displayBook(result))

function displayBook(result) {
  titleBook(result)
  showCharacters(result.characters)
}

function titleBook (result) {
  const h1 = document.getElementById('book')
  h1.innerText = result.title
}

function showCharacters(results) {
  results.forEach( result => {
    characterElement(result)
  })
}

function characterElement(result) {
  const li = document.createElement('li')
  li.innerText = result.name
  characterList.appendChild(li)
}