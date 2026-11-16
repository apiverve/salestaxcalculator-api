# Sales Tax Calculator API - Dart/Flutter Client

Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax amount and the order total back as JSON. Paid plans split both the rate and the tax amount by state, county, city and special district.

[![pub package](https://img.shields.io/pub/v/apiverve_salestaxcalculator.svg)](https://pub.dev/packages/apiverve_salestaxcalculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Sales Tax Calculator API](https://apiverve.com/marketplace/salestaxcalculator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_salestaxcalculator: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_salestaxcalculator/apiverve_salestaxcalculator.dart';

void main() async {
  final client = SalestaxcalculatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'amount': 100,
      'zip': '90210',
      'state': 'CA'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "amount": 100,
    "taxRate": 0.1025,
    "taxRatePercent": 10.25,
    "taxAmount": 10.25,
    "totalAmount": 110.25,
    "zip": "90210",
    "state": "CA",
    "region": "WEST HOLLYWOOD TOURISM IMPROVEMENT DISTRICT",
    "breakdown": {
      "stateRate": 0.06,
      "countyRate": 0.0025,
      "cityRate": 0.0075,
      "specialRate": 0.0325,
      "stateTax": 6,
      "countyTax": 0.25,
      "cityTax": 0.75,
      "specialTax": 3.25
    }
  }
}
```

## API Reference

- **API Home:** [Sales Tax Calculator API](https://apiverve.com/marketplace/salestaxcalculator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/salestaxcalculator](https://docs.apiverve.com/ref/salestaxcalculator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
