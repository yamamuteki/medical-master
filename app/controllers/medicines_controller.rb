class MedicinesController < ApplicationController
  autocomplete :medicine, :name

  def index
    @medicines = Medicine.where('name like ?', "%#{params['q']}%").limit 100
    render json: @medicines
  end
end
