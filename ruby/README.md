# Sales Tax Calculator API - Ruby Gem

Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax amount and the order total back as JSON. Paid plans split both the rate and the tax amount by state, county, city and special district.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_salestaxcalculator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_salestaxcalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_salestaxcalculator'

# Initialize the client
client = APIVerve::Salestaxcalculator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  amount: 100,
  zip: "90210",
  state: "CA"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ amount: 100, zip: "90210", state: "CA" })
  puts response["data"]
rescue APIVerve::Salestaxcalculator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Salestaxcalculator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Salestaxcalculator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/salestaxcalculator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/salestaxcalculator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/salestaxcalculator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
