class ApplicationController < ActionController::Base
	def hello_world
    # 'plain' is 'text/plain'
		# render( {:plain => 'hello world'} )
        # render({plain: 'hello world'})
        # render plain: 'hello world'
    # 'inline' is 'text/html'
    	# render({:inline => '<em>hello world</em>'})
    	# binding.pry
    # using a 'app/views'
    	# renders from ../views/application/
    	render('application/hello_world')
    # same as the following
    	# render inline: File.read('app/views/application/hello_world.html')

	end
end
