
require 'rack'
class Application

    def call(env)
        resp = Rack::Response.new

        localtime = Time.now

        if localtime.hour < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end

