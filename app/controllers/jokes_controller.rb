class JokesController < OpenReadController
  before_action :set_joke, only: [:show, :update, :destroy]

  # GET /jokes
  def index
    @jokes = Joke.all

    render json: @jokes
  end

  # GET /jokes/1
  def show
    # render json: @joke
    render json: Joke.find()
  end

  # POST /jokes
  def create
    # @joke = Joke.new(joke_params)
    @joke = current_user.jokes.build(joke_params)

    if @joke.save
      render json: @joke, status: :created, location: @joke
    else
      render json: @joke.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jokes/1
  def update
    if @joke.update(joke_params)
      render json: @joke
    else
      render json: @joke.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jokes/1
  def destroy
    @joke.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joke
      # @joke = Joke.find(params[:id])
      @joke = current_user.jokes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def joke_params
      params.require(:joke).permit(:title, :joke, :writer)
    end
  
  private :set_joke, :joke_params
end
