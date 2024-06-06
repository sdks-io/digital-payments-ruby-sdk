Gem::Specification.new do |s|
  s.name = 'digital-payments-sdk'
  s.version = '1.0.0'
  s.summary = 'SDK for using Shell Digital Payments APIs'
  s.description = 'The APIs detailed within this SDK will enable Shell\'s Fleet Solutions Customers to digitalize Shell Card/s and use them to pay to refuel their vehicles at Shell Stations.'
  s.authors = ['developer sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://www.shell.com/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.0')
  s.add_dependency('apimatic_core', '~> 0.3.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.add_development_dependency('minitest', '~> 5.14', '>= 5.14.1')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
