function goTo(){
    var bookName= document.getElementById('searchText').value;
    location.href = '/books/name/'+bookName;
}