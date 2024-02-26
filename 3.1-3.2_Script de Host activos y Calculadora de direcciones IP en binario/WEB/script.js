document.addEventListener("DOMContentLoaded", function() {
    var headers = document.querySelectorAll('h2');
    var currentParagraph = null; // Para mantener un registro del párrafo actualmente visible

    headers.forEach(function(header) {
        header.addEventListener('click', function() {
            var paragraph = this.nextElementSibling;
            toggleParagraph(paragraph);
        });
    });

    function toggleParagraph(paragraph) {
        var allParagraphs = document.querySelectorAll('p'); // Obtener todos los párrafos
    
        // Iterar sobre todos los párrafos para eliminar la clase 'show' y agregar 'hidden'
        allParagraphs.forEach(function(p) {
            p.classList.remove('show');
            p.classList.add('hidden');
        });
    
        // Quitar la clase 'hidden' y agregar 'show' solo al párrafo seleccionado
        paragraph.classList.remove('hidden');
        paragraph.classList.add('show');
    }
});
