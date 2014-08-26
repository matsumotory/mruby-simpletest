# mruby-simpletest   [![Build Status](https://travis-ci.org/matsumoto-r/mruby-simpletest.png?branch=master)](https://travis-ci.org/matsumoto-r/mruby-simpletest)
SimpleTest class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :git => 'https://github.com/matsumoto-r/mruby-simpletest.git'
end
```
## example
```ruby
$ok_test = 0
$ko_test = 0
$kill_test = 0
$asserts  = []
$test_start = Time.now if Object.const_defined?(:Time)

puts "---------------------"
puts "mod_mruby test start."
puts "---------------------"
puts ""

def base64 value
  r = [ value ].pack 'm'
  r.include?("\n") ? r.split("\n").join("") : r
end

def server_addr
  "127.0.0.1:38080"
end

def base
  "http://#{server_addr}"
end

assert('mod_mruby', 'location /hello-inline') do
  res = HttpRequest.new.get base + '/hello-inline'
  assert_equal 'hello', res["body"]
end

assert('mod_mruby', 'location /echo-test') do
  res = HttpRequest.new.get base + '/echo-test'
  assert_equal "echo\n", res["body"]
end

assert('mod_mruby', 'location /proxy') do
  res = HttpRequest.new.get base + '/proxy'
  assert_equal "proxy reply success", res["body"]
end

t report
puts ""
report
puts ""
if $ko_test > 0 or $kill_test > 0
    raise "mrbtest failed (KO:#{$ko_test}, Crash:#{$kill_test})"
end
```

## License
under the MIT License:
- see LICENSE file
