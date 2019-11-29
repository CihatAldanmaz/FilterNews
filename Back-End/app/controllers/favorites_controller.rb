class FavoritesController < ApplicationController

    def index
        if (has_valid_token)
          favorites = Favorite.all
          render json: favorites
        else
          render json: {
            go_away: true
          }, status: :unauthorized
        end
      end
    
    # def index
    #     favorites = Favorite.all
    #     render json: favorites
    # end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    # def show
    #     favorite = Favorite.friendly.find(params[:id])
    #     render json: favorite
    #   end

    def create
        favorite = Favorite.create(favorite_params)
        if favorite.valid?
            favorite = favorite
            render json: favorite
        end
    end

    def destroy
        favorite = Favorite.friendly.find(params[:id])
        favorite.destroy
    end

    private


    def favorite_params
        params.permit(:title, :description, :img_url, :date, :news_url, :user_id, :istrue)
    end



end
