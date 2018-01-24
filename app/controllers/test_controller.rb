class TestController < ApplicationController
	def hello_world
		name = 'boy' || 'girl'
		render( 'application/hello_world', { locals: { name: name } })
	end
end