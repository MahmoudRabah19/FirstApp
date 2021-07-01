require 'rails_helper'

RSpec.describe Post, type: :model do
    before (:all) do 
      @post = Post.create(title: "RSPEC TEST", description: "The first test", content: "This the first rspec test file")
    end
    it 'checks that a post can be created' do
      expect(@post).to be_valid
    end
    it 'checks that a post can be read' do
      expect(Post.find_by(title: "RSPEC TEST")).to eq(@post)
    end
    it 'checks that a post can be updated' do
      @post.update(:title => "RSPEC TEST 1")
      expect(Post.find_by_title("RSPEC TEST 1")).to eq(@post)
    end
    it 'checks that a post can be destroyed' do
      @post.destroy
      expect(Post.find_by(title: "RSPEC TEST 1")).to be_nil
    end
  
end
