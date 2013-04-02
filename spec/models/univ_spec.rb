require 'spec_helper'
require 'support/sphinx'

describe "Searching for Articles" do
  ThinkingSphinx::Test.run do
    get :index
    assert [@article], assigns[:articles]
  end
end
