require 'rails_helper'

RSpec.describe "Increments", type: :request do
  describe "GET /likes" do
    it "returns http success" do
      # Define the route and controller action
      Rails.application.routes.draw do
        get '/increment/likes', to: 'increments#likes'
      end

      # Create the IncrementController
      class IncrementsController < ApplicationController
        def likes
          # Implement your code to handle the GET /increment/likes request
          head :ok
        end
      end

      # Make the request and expect a success response
      get "/increment/likes"
      expect(response).to have_http_status(:success)
    end
  end
end
