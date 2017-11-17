class Article < ApplicationRecord
  has_many :comments
  
  def self.search_result(category,author,title,description,feedback)
	articles = Article.all
    articles = articles.where(category: category) if category!= "Category" 
    articles = articles.where(author: author) if author!= "Author" 
    articles = articles.where(["title LIKE ?","%#{title}%"]) if title.present? 
    articles = articles.where(["description LIKE ?","%#{description}%"]) if description.present? 
    articles_comments = Comment.where(feedback: feedback) if feedback!="Any"
    article_ids = articles_comments.pluck(:article_id) if feedback!="Any"
    articles = articles.where(id: article_ids) if feedback!="Any"
    return articles
  end
end
