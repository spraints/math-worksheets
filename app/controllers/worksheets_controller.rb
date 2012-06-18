class WorksheetsController < ApplicationController
  def create
    count = (params[:count] || 10).to_i
    max   = (params[:max]   ||  5).to_i
    @problems = (1..count).map { |n| {a: r(max), b: r(max)} }
  end

  private
  def r max
    (max * Random.rand).to_i
  end
end
