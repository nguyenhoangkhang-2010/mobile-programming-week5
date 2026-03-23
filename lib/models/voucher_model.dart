class VoucherModel {
  final String title;
  final String description;
  final String expiry;
  final String actionText;
  final bool isCollected;

  const VoucherModel({
    required this.title,
    required this.description,
    required this.expiry,
    this.actionText = "Dùng ngay",
    this.isCollected = true,
  });
}