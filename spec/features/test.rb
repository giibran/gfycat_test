require_relative "../pages/homepage.rb"

describe "the signin process" do
  it "signs me in" do
    homepage = Homepage.new
    homepage.load
  end
end