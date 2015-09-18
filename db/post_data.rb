def get_post_data
  post_data = {
    "post1" => {
                    title: "Web Developer vacancies in VA",
                    content: "I saw that this job is available in Virginia! http://www.craigslist.com.",
                    author: "webby",
                  },
    "post2" => {
                    title: "junior web developer wanted in MD",
                    content: "near Baltimore!",
                    author: "webby",
                  },
    "post3" => {
                    title: "developer/engineer job in DC",
                    content: "... with the US Dept of Health and Human Services.",
                    author: "Bob",
                  },
    "post4" => {
                    title: "newbie web developer wanted in DC area",
                    photo_url: "for start up company in DC.",
                    nationality: "Bob",
                  },
    "post5" => {
                    title: "developer/designer combo/hybrid wanted in DC area",
                    photo_url: "They want knowledge of all things HTML, CSS, and Javascript plus a design background.",
                    nationality: "Susan",
                  }
    }
  return post_data
end
