class ListEntriesController < ApplicationController
  def create
    ListEntry.create(
      name: permitted_params.fetch(:name),
      description: permitted_params.fetch(:description)
    )

    head :ok
  end

  private

  def permitted_params
    params.require(:list_entry).permit(:name, :description)
  end
end
