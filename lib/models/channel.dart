class Channel{
  final String description;
  final String imageUrl;
  final String name;

  const Channel({required this.name, required this.description, required this.imageUrl});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Channel &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}