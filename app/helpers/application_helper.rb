module ApplicationHelper
  
  def custom_title page_title
    @content_for_title = page_title + " - " 
  end
  
  def addclass job
    
    classes=""
    job.full_time ? classes+=" full_time" : ""
    job.part_time ? classes+=" part_time" : ""
    job.remote ? classes+=" remote" : ""
    job.flexible ? classes+=" flexible" : ""
    
    rs=RequiredSkill.all
    for skill in rs do
       if job.required_skill_ids.include? skill.id 
          classes+= " rs#{skill.id}"
      end
    end
    classes.strip
  end
end
