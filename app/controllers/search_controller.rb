
  class SearchController < ApplicationController

    def postal_code
      binding.pry
      @postal_code = Postal.where(postal_code:params[:postal_code].tr('０-９ａ-ｚＡ-Ｚ','0-9a-zA-Z'))
      if @postal_code
        render json: @postal_code
      else
        puts "データがありません"
      end
    end

  end

