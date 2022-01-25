class GifPresenter
  def initialize(public_path:)
    @public_path = public_path
  end

  def to_json
    { path: @public_path }.to_json
  end
end
