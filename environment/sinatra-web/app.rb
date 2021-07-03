require "sinatra"
get "/" do
    erb :index
end

#erb :indexと記載すると、views/index.erbが呼び出されるのが、Sinatraのルール

post "/" do
    erb :index
end