#!/usr/bin/env ruby

require 'test/unit'
require './test/test_helper'

require 'janken'

class TC_Janken < Test::Unit::TestCase
  def setup
    @obj = Janken.new
  end
  def teardown
  end

  def test_judge
    assert_equal(0, @obj.judge('goo', 'choki'))
    assert_equal(0, @obj.judge('choki', 'paa'))
    assert_equal(0, @obj.judge('paa', 'goo'))

    assert_equal(1, @obj.judge('choki', 'goo'))
    assert_equal(1, @obj.judge('paa', 'choki'))
    assert_equal(1, @obj.judge('goo', 'paa'))

    assert_equal(2, @obj.judge('goo', 'goo'))
    assert_equal(2, @obj.judge('choki', 'choki'))
    assert_equal(2, @obj.judge('paa', 'paa'))
  end
end

