t = SimpleTest.new "Test Example"

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
