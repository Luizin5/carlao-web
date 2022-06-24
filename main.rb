require "sinatra"
require "pg"

db = PG::Connection.new(:host => "host.", :user => "user.", :dbname => "dbname.", :port => "5432", :password => "password")

get "/" do
  erb :index
end

get "/review" do
  erb :review, :locals => {:titulo => "Avaliar",:body => "Gostou do bot? Acha que pode melhorar? Deixe sua avaliação aqui."}
end

post "/post" do 
  db.exec("insert into reviews(nome, review) values('#{params[:nome]}','#{params[:coment]}')")

  puts "nome: #{params[:nome]}\navaliação: #{params[:coment]}"

  erb :index
end
