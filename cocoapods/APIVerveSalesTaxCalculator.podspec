Pod::Spec.new do |s|
  s.name             = 'APIVerveSalesTaxCalculator'
  s.version          = '1.2.3'
  s.summary          = 'Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax...'
  s.description      = <<-'DESC'
Sales Tax Calculator is a US sales tax calculation API: send an order amount with a ZIP code or state and get the combined rate, the tax amount and the order total back as JSON. Paid plans split both the rate and the tax amount by state, county, city and special district.

This iOS/macOS SDK provides a convenient way to access the Sales Tax Calculator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/salestaxcalculator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/salestaxcalculator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveSalesTaxCalculator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
