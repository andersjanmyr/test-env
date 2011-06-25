$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'
$LOAD_PATH.unshift File.dirname(__FILE__) + '/views'
p $LOAD_PATH

require 'test-env'
run Test::Env::App

