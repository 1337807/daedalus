path = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(path, '..', 'lib'))

require 'minitest/pride'
require 'minitest/autorun'
