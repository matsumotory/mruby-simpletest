t = SimpleTest.new

t.assert "test1" do
  t.assert_equal "echo", "echo"
  t.assert_equal "ech", "ech"
end

t.assert "test2" do
  t.assert_equal "hoge", "hoge"
end

t.report
