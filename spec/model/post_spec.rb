require 'rails_helper'

RSpec.describe Post, :type => :model do
   context "Validate title from post" do
        it "if is valid" do
            post = Post.new(title: 'First Title', content: 'Content')
            expect(post).to be_valid
        end

        it "if not valid" do
            post = Post.new(content: 'Content')
            expect(post).to_not be_valid
        end

        it "returns can not be empty" do
            post = Post.new(title: nil)
            post.valid?
            expect(post.errors[:title]).to include("can't be blank")
        end
   end

   context "Validate Contente from post" do
    it "if is valid" do
        post = Post.new(title: 'Segundo Title', content: 'Content')
        expect(post).to be_valid
    end

    it "if not valid" do
        post = Post.new(title: 'Segundo Title',)
        expect(post).to_not be_valid
    end

    it "returns can not be empty" do
        post = Post.new(content: nil)
        post.valid?
        expect(post.errors[:content]).to include("can't be blank")
    end
end
   
end
