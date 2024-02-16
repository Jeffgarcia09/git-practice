class ScannedItems {
  int? id;
  String? chassisNumber;
  String? engineNumber;
  String? model;
  String? manufactoringDate;
  String? color;
  String? batchNumber;
  String? brand;
  int? userId;
  String? scanDate;

  ScannedItems(
      {this.id,
      this.chassisNumber,
      this.engineNumber,
      this.model,
      this.manufactoringDate,
      this.color,
      this.batchNumber,
      this.brand,
      this.userId,
      this.scanDate});

  ScannedItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chassisNumber = json['chassisNumber'];
    engineNumber = json['engineNumber'];
    model = json['model'];
    manufactoringDate = json['manufactoringDate'];
    color = json['color'];
    batchNumber = json['batchNumber'];
    brand = json['brand'];
    userId = json['userId'];
    scanDate = json['scanDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chassisNumber'] = this.chassisNumber;
    data['engineNumber'] = this.engineNumber;
    data['model'] = this.model;
    data['manufactoringDate'] = this.manufactoringDate;
    data['color'] = this.color;
    data['batchNumber'] = this.batchNumber;
    data['brand'] = this.brand;
    data['userId'] = this.userId;
    data['scanDate'] = this.scanDate;
    return data;
  }
}
