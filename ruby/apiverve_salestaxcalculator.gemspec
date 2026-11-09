# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_salestaxcalculator"
  spec.version       = "1.2.5"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Sales Tax Calculator API - Ruby Client"
  spec.description   = "Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax amount and the order total back as JSON. Paid plans split both the rate and the tax amount by state, county, city and special district."
  spec.homepage      = "https://apiverve.com/marketplace/salestaxcalculator?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/salestaxcalculator-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/salestaxcalculator"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
