module ArticlesHelper

  def categories
    Article.pluck(:category).uniq rescue []
  end

  def authors
   return Article.pluck(:author).uniq rescue []
  end
  
end
