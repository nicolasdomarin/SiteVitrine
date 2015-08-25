class ProductsController < ApplicationController
	before_action :require_editor, only: [:show, :edit]
end
