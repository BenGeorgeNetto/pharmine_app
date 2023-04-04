class Medicine {
  final String medicineName;
  final String medicineId;
  final String type;
  final String quantity;
  final String medicinePrice;
  final String medicineImagePath;
  final String use;
  final String dosage;

  Medicine({
    required this.medicineName,
    required this.medicineId,
    required this.type,
    required this.quantity,
    required this.medicinePrice,
    required this.medicineImagePath,
    required this.use,
    required this.dosage,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) {
    return Medicine(
      medicineName: json['medicine_name'],
      medicineId: json['medicine_id'],
      type: json['type'],
      quantity: json['quantity'],
      medicinePrice: json['medicine_price'],
      medicineImagePath: json['medicine_image_path'],
      use: json['use'],
      dosage: json['dosage'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['medicine_name'] = medicineName;
    data['medicine_id'] = medicineId;
    data['type'] = type;
    data['quantity'] = quantity;
    data['medicine_price'] = medicinePrice;
    data['medicine_image_path'] = medicineImagePath;
    data['use'] = use;
    data['dosage'] = dosage;
    return data;
  }
}
