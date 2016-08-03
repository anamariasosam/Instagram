class NearMeController < ApplicationController
  def index
    @media = HTTParty.get("https://api.instagram.com/v1/media/search?lat=6.208368&lng=-75.567059&access_token=2129469216.e029fea.33e99327453b40dbbe901e4f36a247c4")['data']
    @media_tag = HTTParty.get("https://api.instagram.com/v1/tags/producto/media/recent?access_token=2129469216.e029fea.33e99327453b40dbbe901e4f36a247c4")['data']
  end
end
