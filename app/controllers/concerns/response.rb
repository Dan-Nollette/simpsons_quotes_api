module Response
  def json_response(object, status = :ok)
    render json: object, status: :ok
  end
end
