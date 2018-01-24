# class ApplicationController < ActionController::Base
# 	def hello_world
#     # 'plain' is 'text/plain'
# 		# render( {:plain => 'hello world'} )
#         # render({plain: 'hello world'})
#         # render plain: 'hello world'
#     # 'inline' is 'text/html'
#     	# render({:inline => '<em>hello world</em>'})
#     	# binding.pry
#     # using a 'app/views'
#     	# renders from ../views/application/
#     	# render('application/hello_world')
#     # same as the following
#     	render inline: File.read('app/views/application/hello_world.html.erb')
# 	end
# end

class ApplicationController < ActionController::Base
    def hello_world
        name = params['name'] || 'World'
        render 'application/hello_world', locals: { name: name }
    end
    def list_posts
    	connection = SQLite3::Database.new 'db/development.sqlite3'
    	connection.results_as_hash = true
    	posts = connection.execute("SELECT * FROM posts")
    	render( 'application/list_posts', locals: { posts: posts })
    end
end
