import 'dart:convert';

const String jsonData = '''
[
    {
        "id": 1,
        "name": "Moccja",
        "category": "Iced",
        "description": "A refreshing iced tea with a hint of mocha flavor.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/mocha.jpg",
        "price": 14.58
    },
    {
        "id": 2,
        "name": "Espresso",
        "category": "Traditional",
        "description": "A rich and strong shot of espresso with a robust flavor.",
        "rating": 4.7,
        "rating_count": 20,
        "image": "assets/image/espresso.jpg",
        "price": 3.53
    },
    {
        "id": 3,
        "name": "Latte",
        "category": "Milk-Based",
        "description": "A smooth and creamy latte made with freshly brewed espresso and steamed milk.",
        "rating": 4.9,
        "rating_count": 35,
        "image": "assets/image/latte.jpg",
        "price": 4.50
    },
    {
        "id": 4,
        "name": "Cappuccino",
        "category": "Milk-Based",
        "description": "A perfect blend of espresso, steamed milk, and foam for a balanced and flavorful drink.",
        "rating": 4.8,
        "rating_count": 28,
        "image": "assets/image/capuchino.jpg",
        "price": 4.20
    },
    {
        "id": 5,
        "name": "Americano",
        "category": "Traditional",
        "description": "A classic Americano made by diluting espresso with hot water for a bold yet smooth taste.",
        "rating": 4.6,
        "rating_count": 18,
        "image": "assets/image/americano.jpg",
        "price": 3.50
    },
        {
        "id": 5,
        "name": "Americano",
        "category": "Traditional",
        "description": "A classic Americano made by diluting espresso with hot water for a bold yet smooth taste.",
        "rating": 4.6,
        "rating_count": 18,
        "image": "assets/image/americano.jpg",
        "price": 3.50
    },    {
        "id": 5,
        "name": "Americano",
        "category": "Traditional",
        "description": "A classic Americano made by diluting espresso with hot water for a bold yet smooth taste.",
        "rating": 4.6,
        "rating_count": 18,
        "image": "assets/image/americano.jpg",
        "price": 3.50
    },    {
        "id": 5,
        "name": "Americano",
        "category": "Traditional",
        "description": "A classic Americano made by diluting espresso with hot water for a bold yet smooth taste.",
        "rating": 4.6,
        "rating_count": 18,
        "image": "assets/image/americano.jpg",
        "price": 3.50
    },
    {
        "id": 6,
        "name": "Mocha",
        "category": "Specialty",
        "description": "A delightful blend of espresso, chocolate syrup, and steamed milk, topped with whipped cream.",
        "rating": 4.9,
        "rating_count": 40,
        "image": "assets/image/mocha.jpg",
        "price": 5.10
    },
    {
        "id": 7,
        "name": "Macchiato",
        "category": "Traditional",
        "description": "A bold and rich espresso macchiato with a touch of steamed milk and foam.",
        "rating": 4.7,
        "rating_count": 22,
        "image": "assets/image/macchiato.jpg",
        "price": 3.20
    },
    {
        "id": 8,
        "name": "Flat White",
        "category": "Milk-Based",
        "description": "A smooth and velvety flat white made with rich espresso and steamed milk.",
        "rating": 4.8,
        "rating_count": 25,
        "image": "assets/image/flatwhite.jpg",
        "price": 4.30
    },
    {
        "id": 9,
        "name": "Cold Brew",
        "category": "Cold",
        "description": "A refreshing and smooth cold brew coffee, perfect for a hot day.",
        "rating": 4.7,
        "rating_count": 30,
        "image": "assets/image/coldbrew.jpg",
        "price": 3.80
    },
    {
        "id": 10,
        "name": "Nitro Coffee",
        "category": "Cold",
        "description": "A unique and creamy nitro coffee infused with nitrogen for a smooth finish.",
        "rating": 4.9,
        "rating_count": 15,
        "image": "assets/image/nitrocoffee.jpg",
        "price": 5.50
    },
    {
        "id": 11,
        "name": "Iced Coffee",
        "category": "Cold",
        "description": "A classic iced coffee brewed fresh and served cold.",
        "rating": 4.6,
        "rating_count": 18,
        "image": "assets/image/icedcoffee.jpg",
        "price": 3.80
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Specialty",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
     {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },{
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },{
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    },
    {
        "id": 12,
        "name": "Affogato",
        "category": "Cold",
        "description": "A delightful combination of hot espresso poured over creamy vanilla ice cream.",
        "rating": 4.8,
        "rating_count": 12,
        "image": "assets/image/afagatto.jpg",
        "price": 5.30
    }
]
''';

class Coffee {
  final int id;
  final String name;
  final String category;
  final String description;
  final double rating;
  final int ratingCount;
  final String image;
  final double price;

  Coffee({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.rating,
    required this.ratingCount,
    required this.image,
    required this.price,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      description: json['description'],
      rating: json['rating'],
      ratingCount: json['rating_count'],
      image: json['image'],
      price: json['price'],
    );
  }

  static List<Coffee> fromJsonList(String jsonString) {
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((item) => Coffee.fromJson(item)).toList();
  }
}
