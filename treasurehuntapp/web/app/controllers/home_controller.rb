
class HomeController < ApplicationController
  def index
    @users = User.all
    # @geoinfo = Geokit::Geocoders::MultiGeocoder.geocode('request.remote_ip')
    # @location = @geoinfo.ll.split(',')
    @location = [40.739101,-73.982597]
		# @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  # 		marker.lat user.latitude
  # 		marker.lng user.longitude
  # 		marker.json({link: "someurl", current: true})
		# end
  end
end