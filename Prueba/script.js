document.getElementById('searchInput').addEventListener('input', function() {
    var input, filter, ul, li, a, i, txtValue, resultadosBusqueda;
    input = document.getElementById('searchInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById('menu').getElementsByTagName('ul')[0];
    li = ul.getElementsByTagName('li');
    resultadosBusqueda = document.getElementById('resultadoBusqueda');
    resultadosBusqueda.innerHTML = '';

    for (i = 0; i < li.length; i++) {
        a = li[i];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            resultadosBusqueda.innerHTML += '<li>' + txtValue + '</li>';
        }
    }
});
