require 'factory_girl'
company = Company.find_or_initialize_by_role(
  :email => "admin@innku.com",
  :title => "Innku",
  :city => "Monterrey",
  :password => "secret",
  :website => 'www.innku.com',
  :password_confirmation => "secret",
  :description => "Agile web solutions",
  :role => 'admin')
  company.save
  company.role='admin'
  company.save


  company = Company.create(
    :email => "sample@company.com",
    :title => "Sample Company",
    :city => "Monterrey",
    :website => 'www.innku.com',
    :password => "secret",
    :password_confirmation => "secret",
    :description => "Web solutions")
    company.save

    if RequiredSkill.count.zero?
      RequiredSkill.create [
        {:skill_name =>'Ajax'},
        {:skill_name =>'Javascript'},
        {:skill_name =>'CSS'},
        {:skill_name =>'JQuery'},
        {:skill_name =>'MySql'},
        {:skill_name =>'Sinatra'},
        {:skill_name =>'Ruby'},
        {:skill_name =>'Ruby on Rails'}
      ]
    end

    if Job.count.zero?
      Factory(:job_for_seed, :full_time=>true, :title=> "Buen rubyero", :company =>  Company.last)
      Factory(:job_for_seed, :full_time=>true, :title=> "MySql Pro",:company =>  Company.last)
      Factory(:job_for_seed, :part_time=>true, :title=> "Mister Ruby",:company =>  Company.first)
      Factory(:job_for_seed, :part_time=>true, :title=> "Rails Lover",:company =>  Company.last)
      Factory(:job_for_seed, :remote=>true, :title=> "Fron end expert",:company =>  Company.first)
      Factory(:job_for_seed, :remote=>true, :title=> "Sinatra master",:company =>  Company.last)
      Factory(:job_for_seed, :flexible=>true, :title=> "Ruby developer",:company =>  Company.first)
      Factory(:job_for_seed, :flexible=>true, :title=> "Excelente programador",:company =>  Company.last)
      Factory(:job_for_seed, :full_time=>true, :title=> "Diseñador Web", :company =>  Company.last)
      Factory(:job_for_seed, :full_time=>true, :title=> "API Developer",:company =>  Company.last)
      Factory(:job_for_seed, :flexible=>true, :title=> "Test Driven engineer",:company =>  Company.first)
      Factory(:job_for_seed, :flexible=>true, :title=> "Rails Ninja",:company =>  Company.last)
      Factory(:job_for_seed, :full_time=>true, :title=> "Programador de Ruby", :company =>  Company.last)
      Factory(:job_for_seed, :full_time=>true, :title=> "Ruby on Rails developer",:company =>  Company.last)
      Factory(:job_for_seed, :part_time=>true, :title=> "BDD Tester",:company =>  Company.first)
      Factory(:job_for_seed, :part_time=>true, :title=> "Web app developer",:company =>  Company.last)
      Factory(:job_for_seed, :remote=>true, :title=> "Software engenner",:company =>  Company.first)
      Factory(:job_for_seed, :remote=>true, :title=> "MySql GURU",:company =>  Company.last)
      Factory(:job_for_seed, :flexible=>true, :title=> "Test Driven engineer",:company =>  Company.first)
      Factory(:job_for_seed, :flexible=>true, :title=> "Rails Ninja",:company =>  Company.last)
    end   

