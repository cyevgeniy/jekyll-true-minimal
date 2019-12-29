# frozen_string_literal: true
# based off <https://github.com/jekyll/minima/blob/master/minima.gemspec>

Gem::Specification.new do |spec|
  spec.name          = "jekyll-true-minimal"
  spec.version       = "1.0.0"
  spec.authors       = ["cyevgeniy"]
  spec.email         = [""]

  spec.summary       = "Minimal and ascetic theme for jekyll."
  spec.homepage      = "https://cyevgeniy.github.io/jekyll-true-minimal/"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_development_dependency "bundler"
end
