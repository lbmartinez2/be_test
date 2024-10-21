class Api::UsersController < ApplicationController
  def index
    username = request.headers['X-Username']
    password = request.headers['X-Password']

    response = HTTParty.get(
      "http://zyx-martinez-be-test.atwebpages.com/wp-json/wp/v2/users",
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
