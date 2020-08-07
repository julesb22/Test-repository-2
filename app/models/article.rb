class Article < ApplicationRecord
  validates :title, presence:true, length: {minimum:3, maximum:200}
  validates :description, presence:true

  def show
    @article = Article.find(params[:id])
  end
end
