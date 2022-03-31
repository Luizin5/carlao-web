require "sinatra"
require "pg"

db = PG::Connection.new(:host => "ec2-54-157-79-121.compute-1.amazonaws.com", :user => "kedocpfwhwvgjd", :dbname => "db6d43q8s9idev", :port => "5432", :password => "7162fc6671eedf6a89869200d4fe6594becb3a3e2fc26ba36e5abb4ec95d01bf")

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
