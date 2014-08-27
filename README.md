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
t = SimpleTest.new "Test Example1"

t.assert "test1" do
  t.assert_equal "echo", "echo"
  t.assert_equal "ech", "ech"
end

t.assert "test2" do
  t.assert_equal "hoge", "hoge"
  t.assert_not_equal "hoge", "foo"
  t.assert_true true
  t.assert_false false
end

t.report

s = SimpleTest.new "Test Example2"

s.assert "test1" do
  s.assert_equal "echo", "echo"
  s.assert_equal "ech", "ech"
end

s.report
```
### Result
```
$ ./bin/mruby test.rb
SimpleTest: Test Example1
..
Total: 2
   OK: 2
   KO: 0
Crash: 0
 Time: 0.0005770 seconds

SimpleTest: Test Example2
.
Total: 1
   OK: 1
   KO: 0
Crash: 0
 Time: 0.0000330 seconds

```

## License
under the MIT License:
- see LICENSE file
