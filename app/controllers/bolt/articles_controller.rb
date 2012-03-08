module Bolt
class Bolt::ArticlesController < Bolt::BoltController
  # GET /bolt/articles
  # GET /bolt/articles.json
  def index
    @bolt_articles = Bolt::Article.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bolt_articles }
    end
  end

  # GET /bolt/articles/1
  # GET /bolt/articles/1.json


  # GET /bolt/articles/new
  # GET /bolt/articles/new.json
  def new
    @bolt_article = Bolt::Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bolt_article }
    end
  end

  # GET /bolt/articles/1/edit
  def edit
    @bolt_article = Bolt::Article.find(params[:id])
  end

  # POST /bolt/articles
  # POST /bolt/articles.json
  def create
    @bolt_article = Bolt::Article.new(params[:bolt_article])

    respond_to do |format|
      if @bolt_article.save
        format.html { redirect_to :action=>'index', notice: 'Article was successfully created.' }
        format.json { render json: @bolt_article, status: :created, location: @bolt_article }
      else
        format.html { render action: "new" }
        format.json { render json: @bolt_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bolt/articles/1
  # PUT /bolt/articles/1.json
  def update
    @bolt_article = Bolt::Article.find(params[:id])

    respond_to do |format|
      if @bolt_article.update_attributes(params[:bolt_article])
        format.html { redirect_to :action=>'index', notice: 'Article was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bolt_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolt/articles/1
  # DELETE /bolt/articles/1.json
  def destroy
     @bolt_article = Bolt::Article.find(params[:id])
    @bolt_article.destroy

    respond_to do |format|
      format.html { redirect_to :back  }
      format.json { head :ok }
    end
  end

def destroy_multiple
   ids= params[:id]
   idarr=ids.split(',')
   idarr.each do |del|
    @bolt_article = Bolt::Article.find(del)
    @bolt_article.destroy
   end
    respond_to do |format|
      format.html { redirect_to :back  }
      format.json { head :ok }
    end

end
  
  
end
end
