require 'pry'
require 'rainbow'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?

helpers do
  def run_sql(sql)
    db = PG.connect(:dbname => 'westeros', :host => 'localhost')
    result = db.exec(sql)
    db.close
    result
  end
end

get '/' do
  erb :index
end

get '/houses' do
  sql = "SELECT * FROM houses"
  @houses = run_sql(sql)
  erb :houses
end

get '/people' do
  sql = "SELECT * FROM gotpeople"
  @people = run_sql(sql)
  erb :people
end

get '/people/:id' do
  id = params[:id]
  sql = "SELECT * from gotpeople WHERE id = #{id}"
  @person = run_sql(sql).first
  erb :person
end

get '/houses/:id' do
  id = params[:id]
  sql = "SELECT * from houses WHERE id = #{id}"
  @house = run_sql(sql).first
  erb :house
end
