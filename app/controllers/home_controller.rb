class HomeController < ApplicationController
  def info
    # render plain: 'hello world'
    @result = rand() > 0.5 ? 'Win' : 'Loose'
    @days = ['sunday', 'monday', 'tuesday']
  end
end