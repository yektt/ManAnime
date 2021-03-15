Reviews = {};

Reviews.destroyReview = function(reviewId, contentName, length) {
  review = document.getElementById("review" + reviewId);
  if( length == 0) {
    var no_reviews_added = document.createElement('h4');
    no_reviews_added.className = "mt-3";
    no_reviews_added.appendChild(document.createTextNode('No review has been added to ' + contentName +  ' so far!'));
    review.parentElement.insertBefore(no_reviews_added, review.parentElement.firstChild);
  }
  review.nextElementSibling.remove();
  review.remove();
}
