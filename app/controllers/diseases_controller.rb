class DiseasesController < ApplicationController
  autocomplete :disease, :name
  def index
  end
end
