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
    title: 'The Everything Store: Jeff Bezos and the Age of Amazon',
    price: 80.00,
    imageUrl: "THE-EVERTHING-STORE.jpg",
    content:
        '"The Everything Store" is a biography detailing Amazon.com\'stransformation from a book delivery service to the expansive  online marketplace it is today under the leadership of Jeff Bezos. The book highlights Bezos\'s visionary approach, corporate culture of ambition and secrecy, and the company\'s groundbreaking ventures like the Kindle and cloud computing. The author, Brad Stone, gained unique access to insiders, providing readers with an in-depth look at Amazon\'s evolution and its impact on the retail landscape.',
    type: 'Ebook',
    payment: 'Yape',
    valoration: 5,
    author: 'desconocido',
    fechapubliacion: '4 Enero 2024',
  ),
  Book(
    title: 'Business Model Generation',
    price: 100.00,
    imageUrl: "BUSINESS-MODEL-GENERATION.jpg",
    content:
        '"Business Model Generation" is a handbook for innovators looking to disrupt outdated business models. Co-created by global practitioners, the book offers practical tools and insights to help organizations adapt to new challenges. It explains common business model patterns, guiding readers in designing and implementing transformative strategies for success.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '12 Enero 2024',
  ),
  Book(
    title:
        'Building a StoryBrand: Clarify Your Message So Customers Will Listen',
    price: 120.00,
    imageUrl: "BUILDING-A-STORY-BRAND.jpg",
    content:
        'Using the right words is crucial for selling products, as ineffective communication can lead to lost revenue. In "Building a StoryBrand," Donald Miller shares a proven system, the StoryBrand process, to help business owners engage and influence customers. This book addresses the challenge of cutting through distractions, providing a clear and distinct message to improve customer connection, sales, and overall business growth.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'International Economics: Theory and Policy, Global Edition ',
    price: 100.00,
    imageUrl: "INTERNATIONAL-ECONOMICS.jpg",
    content:
        '"International Economics: Theory and Policy" by Paul Krugman and Maurice Obstfeld is a market-leading textbook that offers an intuitive introduction to economic theory followed by self-contained chapters on key policy applications. The Eighth Edition incorporates the latest research and covers current issues like outsourcing, economic geography, trade and the environment, financial derivatives, the subprime crisis, and China\'s exchange rate policies.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'Testing Business Ideas: A Field Guide for Rapid Experimentation ',
    price: 70.00,
    imageUrl: "TESTING-BUSINESS-IDEAS.jpg",
    content:
        'Testing Business Ideas explains how systematically testing business ideas dramatically reduces the risk and increases the likelihood of success for any new venture or business project. It builds on the internationally popular Business Model Canvas and Value Proposition Canvas by integrating Assumptions Mapping and other powerful lean startup-style experiments.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'PURPLE COW Transform Your Business by Being Remarkable',
    price: 90.00,
    imageUrl: "PURPLE-COW.jpg",
    content:
        'The marketing world isn\'t what it used to be. Simply creating a good product isn\'t enough,and standard advertisements now just get lost amongst all the others. To get people\'s attention and be truly successful, you\'ve got to stand out and get noticed-just like a purple cow.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'YouTube Secrets',
    price: 50.00,
    imageUrl: "YOUTUBE-SECRETS.jpg",
    content:
        'YouTube has changed our world from how we view video to how we connect and market—opening a new entrepreneurial landscape to ambitious individuals. Millions of people generate six to seven figures annually from online video content. And, with the right roadmap, you too could be en route to real influence and income.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title:
        'Advanced Business English Idioms Visual Guide: Master Sales & Marketing',
    price: 40.00,
    imageUrl: "ADVANCED-BUSINESS-ENGLISH-IDIOMS.jpg",
    content:
        'Elevate your sales and marketing conversations with "Advanced Business English Idioms Visual Guide: Master Sales & Marketing Conversations," a comprehensive resource designed to boost your confidence and transform your language skills. Ideal for sales professionals, marketers, and intermediate English learners, this book unveils the power of idiomatic expressions, helping you sound more like a native speaker and communicate more persuasively',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'Business Email',
    price: 70.00,
    imageUrl: "BUSINESS-EMAIL.jpg",
    content:
        'They are evidence of something that you said or did, and as such, they can be your best friend or your worst nightmare. Every day, a staggering amount of business communication takes place. This book will help you not only write more professional business e-mails but also improve your overall business English.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'International Trade: What Everyone Needs to KnowRG',
    price: 150.00,
    imageUrl: "INTERNATIONAL-TRADE.jpg",
    content:
        'International trade and trade policy have become increasingly important and complex in recent years. In this comprehensive introduction to the key aspects of international trade policy, noted authority Anne O. Krueger explains what has happened and why these issues are so difficult.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title:
        'Culture Hacks: Deciphering Differences in American, Chinese, and Japanese Thinking',
    price: 60.00,
    imageUrl: "CULTURE-HACKS.jpg",
    content:
        'Richard Conrad grew up in Washington, D.C., studied engineering and economics at Vanderbilt University, earned a master’s degree in Economics as a local student at Fudan University in Shanghai, China, and later earned an MBA from the University of North Carolina at Chapel Hill.Richard worked for the last sixteen years for a large U.S. money management firm researching, analyzing, and investing in Chinese and Japanese equities. Richard is fluent in Chinese and Japanese and continues to live in Asia with his family.',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
  Book(
    title: 'The Globalization Myth',
    price: 60.00,
    imageUrl: "THE-GLOBALIZATION-MYTH.jpg",
    content:
        'The conventional wisdom about globalization is wrong. Over the past forty years as companies, money, ideas, and people went abroad, they increasingly looked regionally rather than globally. O’Neil details this transformation and the rise of three major regional hubs in Asia, Europe, and North America. Current technological, demographic, and geopolitical trends look only to deepen these regional ties',
    type: 'Audiolibro',
    payment: 'Plin',
    valoration: 4,
    author: 'desconocido',
    fechapubliacion: '6 Enero 2024',
  ),
];
