import 'dart:convert';

class FeeLine {
  final int? id;
  final String? title;
  final bool? taxable;
  final String? taxClass;
  final String? total;
  final String? totalTax;
  FeeLine({
    this.id,
    this.title,
    this.taxable,
    this.taxClass,
    this.total,
    this.totalTax,
  });

  FeeLine copyWith({
    int? id,
    String? title,
    bool? taxable,
    String? taxClass,
    String? total,
    String? totalTax,
  }) {
    return FeeLine(
      id: id ?? this.id,
      title: title ?? this.title,
      taxable: taxable ?? this.taxable,
      taxClass: taxClass ?? this.taxClass,
      total: total ?? this.total,
      totalTax: totalTax ?? this.totalTax,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'taxable': taxable,
      'taxClass': taxClass,
      'total': total,
      'totalTax': totalTax,
    };
  }

  factory FeeLine.fromMap(Map<String, dynamic> map) {
    return FeeLine(
      id: map['id'],
      title: map['title'],
      taxable: map['taxable'],
      taxClass: map['tax_class'],
      total: map['total'],
      totalTax: map['total_tax'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FeeLine.fromJson(String source) =>
      FeeLine.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FeeLine(id: $id, title: $title, taxable: $taxable, taxClass: $taxClass, total: $total, totalTax: $totalTax)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FeeLine &&
        other.id == id &&
        other.title == title &&
        other.taxable == taxable &&
        other.taxClass == taxClass &&
        other.total == total &&
        other.totalTax == totalTax;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        taxable.hashCode ^
        taxClass.hashCode ^
        total.hashCode ^
        totalTax.hashCode;
  }
}
