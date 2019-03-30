module Order
  extend ActiveSupport::Concern

  def order(queries)
    srand(Time.current)
    rand(queries.length)
  end
end