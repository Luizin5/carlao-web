require "sinatra"
require "sqlite3"

db = SQLite3::Database.new "db/db.db"

get "/" do
  erb :index
end

get "/review" do
  erb :review, :locals => {:titulo => "Avaliar",:body => "Gostou do bot? Acha que pode melhorar? Deixe sua avaliação aqui."}
end

post "/post" do 
  db.execute("insert into coments values(\"#{params[:nome]}\",\"#{params[:coment]},\")")

  puts "nome: #{params[:nome]}\navaliação: #{params[:coment]}"

  erb :index
end
