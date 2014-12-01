require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'fluffy_pm', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
  @tasks = run_sql("
  SELECT tasks.title, tasks.due_at, tasks.id,
  workers.first_name AS worker_first_name,
  workers.last_name AS worker_last_name

  FROM tasks
  LEFT OUTER JOIN workers
  ON tasks.worker_id = workers.id;
") #inserting the first and last name from the worker's table as they dont exist in task table.
  #left table is determined by the condition below.
  #ON tasks.worker_id = workers.id; establishes the bridge between the 2 tables

  erb :home
end

get '/tasks/new' do
  @workers = run_sql("SELECT id, first_name, last_name FROM workers;")

  erb :new_task
end

get '/tasks/:id/edit' do
  @task = run_sql("SELECT * FROM tasks WHERE id='#{params[:id]}';")[0]  
  @workers = run_sql("SELECT id, first_name, last_name FROM workers;")

  erb :edit_task
end

put '/tasks/:id' do
  run_sql("UPDATE tasks SET
  title='#{params[:title]}',
  due_at='#{params[:due_at]}',
  worker_id='#{params[:worker_id]}',
  notes='#{params[:notes]}'
  WHERE id=#{params[:id]};")

  redirect '/'
end

post '/tasks' do
  run_sql("
  INSERT INTO tasks
  (title, due_at, worker_id, notes)
  VALUES
  ('#{params[:title]}', '#{params[:due_at]}', '#{params[:worker_id]}', '#{params[:notes]}');
")

  redirect '/'
end

delete '/tasks/:id' do
  run_sql("
DELETE FROM tasks WHERE id='#{params[:id]}';
")

  redirect '/'
end

get '/workers' do
  @workers = run_sql("SELECT * FROM workers;")
#puts the table from SQL into the instance variable
  erb :workers
end

get '/workers/new' do
  #this is for new inputs, controlled by the erb form
  erb :new_worker
end

post '/workers' do
  run_sql("
  INSERT INTO workers
  (first_name, last_name)
  VALUES
  ('#{params[:first_name]}', '#{params[:last_name]}');
")
  #collects the input data from the form and inputs them to the workers table witht he right parameter.

  redirect '/workers'
  #redirect to /workers to continue the process.
end

get '/workers/:id/edit' do
  @worker = run_sql("SELECT * FROM workers WHERE id=#{params[:id]};")[0]  #the instance variable worker is running the sql where it grabs all records from the workers table and selects the id in the hash of the array. Because this is an array, [0] selects the first and only array, removes the bracket to access the hash.ie. item =[{'name'=>'name',name2=>'name2'}]   --->[0] removes the [] as this is the first and only array.

  erb :edit_worker
end

delete '/workers/:id' do
  run_sql("
DELETE FROM workers WHERE id='#{params[:id]}';
")
  #delete the worker based on the condition that the address id = to the id from the worker's table

  redirect '/workers'
end

put '/workers/:id' do
  run_sql("UPDATE workers SET
  first_name='#{params[:first_name]}',
  last_name='#{params[:last_name]}'
  WHERE id=#{params[:id]};")

  #PUT route to update the worker's table, slotting in the first and last name under the condition that the input ID with the ID in the workers table.

  redirect '/workers'

  #redirects to the get of /workers

end
