class Api::UsersController < ApplicationController
  def index
    username = request.headers['X-Username']
    password = request.headers['X-Password']

    response = HTTParty.get(
      "#{ENV["WP_API_URL"]}/users",
      headers: {
        'Authorization' => "Basic #{Base64.strict_encode64("#{username}:#{password}")}"
      }
    )

    if response.success?
      render json: response.parsed_response
    else
      render json: { error: 'Failed to retrieve users' }, status: :bad_request
    end
  end
end
