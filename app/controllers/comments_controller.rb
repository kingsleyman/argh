class CommentsController < ApplicationController
  
	def index
		article = Article.includes(:comments).find(params[:article_id])
  	comments = article.comments

  	render json: comments.to_json(
  		include: [ 
  			article: {
  				only: [ :title ]
  			}
  		],
  			except: [ :updated_at ]
  		)
  end

  def show

  end

 
  def create
  end



  def update
  end

  def destroy
  end
end
