/// Response models for the Sales Tax Calculator API.

/// API Response wrapper.
class SalestaxcalculatorResponse {
  final String status;
  final dynamic error;
  final SalestaxcalculatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  SalestaxcalculatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory SalestaxcalculatorResponse.fromJson(Map<String, dynamic> json) => SalestaxcalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? SalestaxcalculatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Sales Tax Calculator API.

class SalestaxcalculatorData {
  num? amount;
  num? taxRate;
  num? taxRatePercent;
  num? taxAmount;
  num? totalAmount;
  String? zip;
  String? state;
  String? region;
  SalestaxcalculatorDataBreakdown? breakdown;

  SalestaxcalculatorData({
    this.amount,
    this.taxRate,
    this.taxRatePercent,
    this.taxAmount,
    this.totalAmount,
    this.zip,
    this.state,
    this.region,
    this.breakdown,
  });

  factory SalestaxcalculatorData.fromJson(Map<String, dynamic> json) => SalestaxcalculatorData(
      amount: json['amount'],
      taxRate: json['taxRate'],
      taxRatePercent: json['taxRatePercent'],
      taxAmount: json['taxAmount'],
      totalAmount: json['totalAmount'],
      zip: json['zip'],
      state: json['state'],
      region: json['region'],
      breakdown: json['breakdown'] != null ? SalestaxcalculatorDataBreakdown.fromJson(json['breakdown']) : null,
    );
}

class SalestaxcalculatorDataBreakdown {
  num? stateRate;
  num? countyRate;
  num? cityRate;
  num? specialRate;
  num? stateTax;
  num? countyTax;
  num? cityTax;
  num? specialTax;

  SalestaxcalculatorDataBreakdown({
    this.stateRate,
    this.countyRate,
    this.cityRate,
    this.specialRate,
    this.stateTax,
    this.countyTax,
    this.cityTax,
    this.specialTax,
  });

  factory SalestaxcalculatorDataBreakdown.fromJson(Map<String, dynamic> json) => SalestaxcalculatorDataBreakdown(
      stateRate: json['stateRate'],
      countyRate: json['countyRate'],
      cityRate: json['cityRate'],
      specialRate: json['specialRate'],
      stateTax: json['stateTax'],
      countyTax: json['countyTax'],
      cityTax: json['cityTax'],
      specialTax: json['specialTax'],
    );
}

class SalestaxcalculatorRequest {
  double amount;
  String? zip;
  String? state;

  SalestaxcalculatorRequest({
    required this.amount,
    this.zip,
    this.state,
  });

  Map<String, dynamic> toJson() => {
      'amount': amount,
      if (zip != null) 'zip': zip,
      if (state != null) 'state': state,
    };
}
