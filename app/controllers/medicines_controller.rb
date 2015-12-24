class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.all.limit 100
  end
end
