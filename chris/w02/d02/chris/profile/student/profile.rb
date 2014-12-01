require "sinatra"
require "sinatra/reloader"

get '/' do

  erb :main, layout: :template
end


get '/about' do
  erb :about, layout: :template
end


get '/contact' do
  
  erb :contact, layout: :template
end


get '/student' do

erb :student, layout: :template
end


get '/students/:name' do

    @student_data = {
        "Tyrion" => {
        name: "Tyrion Lannister",
        skills: ["brains","dwarf"],    
        },
       "Danerus" => {
        name: "Danerus Targareon",
        skills: ["fire resistance","dragons"],
        },
        "Paeter" => {
        name: "Paeter Baelish",
        skills: ["cunning","little finger"],
        }, 
        "Jon" => {
        name: "Jon Snow",
        skills: ["bastard","knows nothing"],
        },
        "Robert" => {
         name: "Robert Baratheon",
         skills: ["strong","fat"],
        }         
    }

    @student_name = params[:name]
    @student_skills = @student_data[@student_name][:skills]

  erb :student,  layout: :template
end

