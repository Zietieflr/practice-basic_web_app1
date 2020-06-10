const bookList = document.getElementById('book-ul')
const form = document.getElementById('book')

fetch('http://localhost:3000/books')
  .then(response => response.json())
  .then(results => displayBooks(results))

function displayBooks(results) {
  showBooks(results)
}

function showBooks(results) {
  results.forEach( result => {
    bookElement(result)
    addOptions(result)
  })
}

function bookElement(result) {
  const li = document.createElement('li')
  li.innerHTML = `<a href="book.html?id=${result.id}" >${result.title}</a>`
  bookList.appendChild(li)
}

function addOptions (result) {
  const option = document.createElement('option')
  option.innerText = result.title
  option.value = result.id
  form.appendChild(option)
}