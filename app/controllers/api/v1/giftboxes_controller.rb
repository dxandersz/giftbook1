class Api::V1::GiftboxesController < ApplicationController

    def index
        giftbox = Giftbox.all.order(created_at: :desc)
        render json: giftbox
    end

    def show
        if giftbox
            render json: giftbox
        else
            render json: giftbox.errors
        end
    end

    def create
        giftbox = Giftbox.create!(giftbox_params)
        if giftbox
            render json: giftbox
        else
            render json: giftbox.errors
        end
    end

    def destroy
        giftbox&.destroy
        render json: { message: 'Giftbox ended!!' }
    end

    private

    def giftbox_params
        params.permit(:title, :category, :organization, :description, book_ids: [], user_ids: [])
    end

    def giftbox
        @giftbox = Giftbox.find(params[:id])
    end
end