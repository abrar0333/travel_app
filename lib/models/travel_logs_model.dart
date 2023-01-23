class TravelogModel {
  String name;
  String content;
  String place;
  String image;

  TravelogModel(this.name, this.content, this.place, this.image);
}

List<TravelogModel> travelogs = travelogsData
    .map((item) =>
    TravelogModel(item['name']!, item['content']!, item['place']!, item['image']!))
    .toList();

var travelogsData = [
  {
    "name": "\"Paris!\"",
    "content": "Paris is one of the best cities to live in France. Paris is rich in culture and art, has endless work opportunities, world-class universities, and so many life-changing opportunities ",
    "place": "Paris, France",
    "image": "assets/images/paris_image.jpg"
  },
  {
    "name": "\"Dubai!\"",
    "content": "Dubai is city of rich people and best part of Dubai is it's sexy skyline. Buildings in Dubai they are the best specially when it comes to burj Khalifa and burj Al Arab.",
    "place": "Dubai, UAE",
    "image": "assets/images/dubai_image.jpg"
  },

  {
    "name": "\"Paris!\"",
    "content": "Paris is one of the best cities to live in France. Paris is rich in culture and art, has endless work opportunities, world-class universities, and so many life-changing opportunities ",
    "place": "Paris, France",
    "image": "assets/images/paris_image.jpg"
  },
  {
    "name": "\"Dubai!\"",
    "content": "Dubai is city of rich people and best part of Dubai is it's sexy skyline. Buildings in Dubai they are the best specially when it comes to burj Khalifa and burj Al Arab.",
    "place": "Dubai, UAE",
    "image": "assets/images/dubai_image.jpg"
  },

  {
    "name": "\"Paris!\"",
    "content": "Paris is one of the best cities to live in France. Paris is rich in culture and art, has endless work opportunities, world-class universities, and so many life-changing opportunities ",
    "place": "Paris, France",
    "image": "assets/images/paris_image.jpg"
  },
  {
    "name": "\"Dubai!\"",
    "content": "Dubai is city of rich people and best part of Dubai is it's sexy skyline. Buildings in Dubai they are the best specially when it comes to burj Khalifa and burj Al Arab.",
    "place": "Dubai, UAE",
    "image": "assets/images/dubai_image.jpg"
  },
];