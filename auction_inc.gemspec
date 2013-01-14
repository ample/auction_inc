# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'auction_inc/version'

Gem::Specification.new do |s|
  s.name        = 'auction_inc'
  s.version     = AuctionInc::VERSION
  s.authors     = ['pjkelly', 'Bobby Uhlenbrock']
  s.email       = ['pj@crushlovely.com', 'developers@helloample.com']
  s.homepage    = 'http://github.com/ample/auction_inc'
  s.summary     = %q{Ruby wrapper around Auction Inc's shipping API.}
  s.description = %q{Ruby wrapper around Auction Inc's shipping API.}
  
  # Development Gems
  s.add_development_dependency(%q<rake>)
  s.add_development_dependency(%q<rspec>, ["~> 2.11"])
  s.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])

  # Gems
  s.add_dependency(%q<roxml>, ["~> 3.3.1"])

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
