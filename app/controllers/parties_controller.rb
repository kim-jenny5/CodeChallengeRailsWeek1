class PartiesController < ApplicationController

    def index
        if params[:category_id]
            @category = Category.find_by_id(params[:category_id])
            @parties = @category.parties
        else
            @parties = Party.all
        end
    end

    def show
        @party = Party.find_by_id(params[:id])
    end

    def new
        # byebug

        if params[:category_id]
            @category = Category.find_by_id(params[:category_id])
            @party = Party.new
            @party.category_id = @category.id
            @party.supplies.build            
        else
            @party = Party.new
            @party.build_category
            @party.supplies.build
        end
        # @party = Party.new
        # @party.build_category
        # # 3.times do
        #     @party.supplies.build
        # end
    end

    def create
        @party = Party.new(party_params)
        @party.save
        if @party.valid?
            redirect_to parties_path
        else
            render :new
        end

    end

    def edit
        @party = Party.find_by_id(params[:id])
    end

    def update
        @party = Party.find_by_id(params[:id])
        @party.update(party_params)
        if @party.valid?
            redirect_to party_path(@party)
        else
            render :edit
        end
    end

    private

    def party_params
        params.require(:party).permit(:name, :date, :budget, :category_id, category_attributes: [:name], supplies_attributes: [:name])
    end

end