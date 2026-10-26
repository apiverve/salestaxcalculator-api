# Sales Tax Calculator API - PHP Package

Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax amount and the order total back as JSON. Paid plans split both the rate and the tax amount by state, county, city and special district.

## Installation

Install via Composer:

```bash
composer require apiverve/salestaxcalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Salestaxcalculator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'amount' => 100,
    'zip' => '90210',
    'state' => 'CA'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Salestaxcalculator\Client;
use APIVerve\Salestaxcalculator\Exceptions\APIException;
use APIVerve\Salestaxcalculator\Exceptions\ValidationException;

try {
    $response = $client->execute(['amount' => 100, 'zip' => '90210', 'state' => 'CA']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/salestaxcalculator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/salestaxcalculator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/salestaxcalculator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
