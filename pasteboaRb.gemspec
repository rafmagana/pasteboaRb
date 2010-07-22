# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pasteboaRb}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rafael Maga\303\261a"]
  s.date = %q{2010-07-21}
  s.description = %q{A Ruby interface to Mac OS X's Pasteboard}
  s.email = %q{raf.magana@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/pasteboaRb.rb",
     "lib/pasteboarb/core-ext/object.rb",
     "lib/pasteboarb/pasteboard.rb",
     "lib/pasteboarb/platform.rb",
     "lib/pasteboarb/platforms/macosx.rb",
     "lib/pasteboarb/platforms/unknown.rb",
     "test/helper.rb",
     "test/test_pasteboaRb.rb"
  ]
  s.homepage = %q{http://github.com/rafmagana/pasteboaRb}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Ruby interface to Mac OS X's Pasteboard}
  s.test_files = [
    "test/helper.rb",
     "test/test_pasteboaRb.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

