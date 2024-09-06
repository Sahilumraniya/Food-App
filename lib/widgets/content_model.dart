class UnOboardContentModel {
  final String title;
  final String description;
  final String imageUrl;

  UnOboardContentModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<UnOboardContentModel> contents = [
  UnOboardContentModel(
    title: "Select from Our\n    Best Menu",
    description: "Pick Your Food fron our Menu\n   More than 35 times",
    imageUrl: "images/screen1.png",
  ),
  UnOboardContentModel(
    title: "Easy and Online Payment",
    description: "You can pay cash on delivery and card payment available",
    imageUrl: "images/screen2.png",
  ),
  UnOboardContentModel(
    title: "Quick Delivery at YourDoor",
    description: "Delivered your foog at your\n Doorstep",
    imageUrl: "images/screen3.png",
  ),
];
