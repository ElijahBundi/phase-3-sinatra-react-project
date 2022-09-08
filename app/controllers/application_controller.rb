class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get '/blogs' do
    blogs = Blog.all
    blogs.map do |blog|
      blog.title.to_json
    end    
  end 

  post '/reviews' do
    review = Review.create(
      comment: params[:comment],
      author_id: params[:author_id],
      blog_id: params[:blog_id]
    )
    review.to_json
  end

  post '/blogs' do
    blog = Blog.create(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
    )
    blog.to_json
  end

  patch '/blog/:id' do
    blog = Blog.find(params[:id])
    blog.update(
      title: params[:title]
    )
    blog.to_json
  end

  delete '/blog/:id' do
    blog = Blog.find(params[:id])
    blog.destroy
    blog.to_json
  end

end
