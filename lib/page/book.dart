class Book {

  String title;
  double price;
  String imageUrl;
  String content; //contenido del libro
  String type; //audiolibro - ebook
  String payment; //yape - plin
  int valoration; //estrellas
  String author;
  String fechapubliacion;

  Book({
    required this.title, 
    required this.price,
    required this.imageUrl,
    required this.content,
    required this.type,
    required this.payment,
    required this.valoration,
    required this.author,
    required this.fechapubliacion,
  });

}

  //Arreglo de libros
  final List<Book> books = [
    Book(
      title: 'El hombre mas rico de babilonia', 
      price: 95.00, 
      imageUrl: "assets/images/portada.jpg",
      content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 
      type: 'Ebook', 
      payment: 'Yape', 
      valoration: 5, 
      author: 'desconocido',
      fechapubliacion: '4 Enero 2024',
    ),
    Book(
      title: 'Flujo del dinero', 
      price: 120.00, 
      imageUrl: "assets/images/portada.jpg",
      content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 
      type: 'Audiolibro', 
      payment: 'Plin', 
      valoration: 4, 
      author: 'desconocido',
      fechapubliacion: '12 Enero 2024',
    ),
    Book(
      title: 'Flujo del dinero 2', 
      price: 70.00, 
      imageUrl: "assets/images/portada.jpg",
      content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 
      type: 'Audiolibro', 
      payment: 'Plin', 
      valoration: 4, 
      author: 'desconocido',
      fechapubliacion: '6 Enero 2024',
    ),
  ];