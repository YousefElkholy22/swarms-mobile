class ReivewEntity {
  final String id;
  final String name;
  final String image;
  final String comment;
  final DateTime date;
  final double rating;

  ReivewEntity({
    required this.image,
    required this.id,
    required this.name,
    required this.comment,
    required this.date,
    required this.rating,
  });
}
