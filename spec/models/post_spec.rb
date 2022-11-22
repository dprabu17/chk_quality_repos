require 'rails_helper'

RSpec.describe Post, type: :model do
  it "post title is not empty" do
    post = FactoryBot.create(:post)
    expect(post.title).to eq("Programming") 
  end
end
