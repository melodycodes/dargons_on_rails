require 'rails_helper'
describe 'Root path' do
  it "gets index action of pages controller" do
    expect(get: "/").to route_to(controller: "pages", action: "index")
  end
end

RSpec.describe PagesController, type: :controller do
end
