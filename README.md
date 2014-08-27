# mruby-simpletest   [![Build Status](https://travis-ci.org/matsumoto-r/mruby-simpletest.svg?branch=master)](https://travis-ci.org/matsumoto-r/mruby-simpletest)
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
### Test Code
```ruby
t = SimpleTest.new

t.assert "test1" do
  t.assert_equal "echo", "echo"
  t.assert_equal "echo", "echo0"
end

t.assert "test2" do
  t.assert_equal "echo", "ech"
  t.assert_equal "echo", "echo"
end

t.report
```
### Result
```
$ ./bin/mruby test.rb
FF
Fail: test1
 - Assertion[2] Failed: Expected to be equal
    Expected: "echo"
      Actual: "echo0"
Fail: test2
 - Assertion[1] Failed: Expected to be equal
    Expected: "echo"
      Actual: "ech"
Total: 2
   OK: 0
   KO: 2
Crash: 0
 Time: 0.0006290 seconds
```

## License
under the MIT License:
- see LICENSE file
