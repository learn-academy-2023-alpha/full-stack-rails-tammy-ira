require 'rails_helper'


RSpec.describe Blog, type: :model do
  it 'is valid with valid attributes' do
  blog = Blog.create(title: 'My first blog post', content: 'First Blog post')
  expect(blog).to be_valid
  end

  it 'is not valid without a title' do
    blog = Blog.create(content: 'First Blog post')
    expect(blog.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    blog = Blog.create(title: 'My first blog post')
    expect(blog.errors[:content]).to_not be_empty
  end

  it 'is not valid if title is not unique' do
    blog = Blog.create(title: 'My first blog post', content: 'First Blog post')
    duplicate = Blog.create(title: 'My first blog post', content: 'First Blog post')
    expect(duplicate.errors[:title]).to_not be_empty
  end

  it 'is not valid if title is less than 4 characters long' do
    blog = Blog.create(title: 'My', content: 'First Blog post')
    expect(blog.errors[:title]).to_not be_empty
  end

  it 'is not valid if content is less than 10 characters long' do
    blog = Blog.create(title: 'My first blog post', content: 'First')
    expect(blog.errors[:content]).to_not be_empty
  end
















end  

