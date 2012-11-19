// Copyright (c) 2012 Adit Kumar
findRatings()

function findRatings() {
  $("td.rating").each(function(){
    restaurantName = $(this).parent().children("td.restaurant").children("h4")[0].innerText
    yelpSearch(restaurantName, $(this))
  })
}

function yelpSearch(resname, resobj) {
  loc = $(":contains('Delivering') h3")[0].innerText.split("Delivering to ")[1]
  yelpQuery = { term: resname, limit: 1, location: loc, ywsid:"2K063oFj0ST1oWKWXrXdnA" }    
    $.ajax({
        url: 'http://api.yelp.com/business_review_search?' + jQuery.param(yelpQuery),
        success: function(data){ displayReview(data, resobj)}
    });
}

function displayReview(data, resobj) {
  restaurant = JSON.parse(data).businesses[0]
  if(!!restaurant){
    yelpReview = "<br /><a href=\">" + restaurant.url + "\"><img src=\"" + restaurant.rating_img_url_small +"\"/>" + "{" + restaurant.review_count + "}</a>"
    resobj.append(yelpReview)
  }
}