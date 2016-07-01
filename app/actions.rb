def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end 
end

get "/" do
    # Array
    post_shark = {
        username = "sharky_j",
        avatar_url = "http://naserca.com/images/sharky_j.jpg",
        photo_url = "http://naserca.com/images/shark.jpg",
        humanized_time_ago = humanized_Time_ago(15),
        time_ago_in_minutes = 15,
        like_count = 0,
        comment_count = 1,
        comments = [{
        username: "sharky_j",    
        text: "sharky_j: out for the weekend... looking for new friends!"
        }]
}
    
        post_whale = {
        username = "kirk_whalum",
        avatar_url = "http://naserca.com/images/kirk_whalum.jpg",
        photo_url = "http://naserca.com/images/whale.jpg",
        humanized_time_ago: humanized_Time_ago(65),
        time_ago_in_minutes = 15,
        like_count = 0,
        comment_count = 1,
        comments = [{
        username: "kirk_whalum",    
        text: "#weekendvibes"
        }]
    }
    
        
        post_marlin = {
        username = "marlin_peppa",
        avatar_url = "http://naserca.com/images/marlin_peppa.jpg",
        photo_url = "http://naserca.com/images/marlin.jpg",
        humanized_time_ago: humanized_Time_ago(190),
        time_ago_in_minutes = 15,
        like_count = 0,
        comment_count = 1,
        comments = [{
        username: "marlin_peppa",    
        text: "lunchtime! ;)"
        }]
    }
end

    get '/' do
        
        [post_shark,post_whale, post_marlin].to_s
    end
    
    
        #if the time_ago_in_minutes is more than 60
        #if time_ago_in_minutes >= 60
                #return this string
            #   "#{time_ago_in_minutes / 60}" hours ago"
            ##if it's an hour exactly
            #elsifit just happened
                #   "just a moment ago"
            #if it's less than or equal to an hour-
            #else
                ##return this instead
                    #"less than one hour"
                #"#{time_ago_in_minutes} minutes ago"
            #end