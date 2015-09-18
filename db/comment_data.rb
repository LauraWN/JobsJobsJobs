def get_comment_data
  comment_data =
    {"post1"=>
      [{
        :title=>"great job!",
        :content=>"I already applied for it. They said interviews are next week, so get in your applications quickly.",
        :author=>"Smith"
      },
      {
        :title=>"my dream job",
        :content=>"I'm applying now!",
        :author=>"Ichabod",
      },
      {
        :title=>"nice.",
        :content=>"I would apply if I lived nearby.",
        :author=>"Joey",
      },
      {
        :title=>"I applied there...",
        :content=>"They gave me a 5-hour long algorithm test.",
        :author=>"George",
      }],
    "post2"=>
      [{
        :title=>"Too bad I just got a job, or I would apply here.",
        :content=>"They are great. I interned with them last year.",
        :author=>"Edwina",
       },
       {
        :title=>"I'm still looking for a job",
        :content=>"I called HR and they said they are still looking for people.",
        :author=>"Josephine",
        }]
      }

  return comment_data
end
