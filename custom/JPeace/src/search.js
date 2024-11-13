const searchButton = document.querySelector('.gh-search');

function activateSearchButton() {
  searchButton.click();
}

document.addEventListener('keydown', function(event) {
  if (event.ctrlKey && event.key === 'k') {
    event.preventDefault(); 
    activateSearchButton(); 
  }
});