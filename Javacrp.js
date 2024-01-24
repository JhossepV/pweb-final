document.addEventListener("DOMContentLoaded", function() {
    // Array de productos con información
    const productos = [
        { nombre: "Torta de Chocolate", sabor: "Chocolate", tamaño: "Mediano", precio: "$20.00" },
        { nombre: "Torta de Fresa", sabor: "Fresa", tamaño: "Grande", precio: "$25.00" },
        // Agrega más productos según sea necesario
    ];

    // Función para mostrar información del producto
    function mostrarInformacionProducto(index) {
        const producto = productos[index];
        const mensaje = `Nombre: ${producto.nombre}\nSabor: ${producto.sabor}\nTamaño: ${producto.tamaño}\nPrecio: ${producto.precio}`;
        alert(mensaje);
    }

    // Agrega un evento de clic a cada imagen del carrusel
    const imagenes = document.querySelectorAll("#productCarousel .carousel-item img");
    imagenes.forEach((imagen, index) => {
        imagen.addEventListener("click", () => mostrarInformacionProducto(index));
    });

    // También puedes agregar un evento de clic al botón de comprar
    const botonComprar = document.getElementById("botonComprar");
    if (botonComprar) {
        botonComprar.addEventListener("click", () => {
            // Agrega la lógica de compra según tus necesidades
            alert("¡Producto comprado! Gracias por tu compra.");
        });
    }
});