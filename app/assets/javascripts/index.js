function goTo(){
    var bookIsbn = document.getElementById('searchText').value;
    location.href = '/books/'+bookIsbn;
}