Reviews = {};

Reviews.buildReview = function(review) {
  // creating a check for removing 'no review added' information
  if( review.reviewLength == 1) {
    let comment_area = document.getElementById('review');
    comment_area.firstElementChild.remove();
  }

  // creating outside div
  let div_outside = document.createElement('div');
  div_outside.className = 'd-flex flex-row mt-3';
  div_outside.id = 'review-' + review.reviewId;

    // creating user image section
    let div_user_image = document.createElement('div');
    div_user_image.className = 'col-md-1 p-0 mr-3';

      // creating user profile path for image
      let user_path_in_image = document.createElement('a');
      user_path_in_image.className = 'p-0'
      user_path_in_image.href = review.userProfilePath;

        // creating image to display
        let user_image = document.createElement('img');
        user_image.className = 'card-img';
        user_image.alt = 'Avatar for ' + review.userName;
        user_image.src = review.userAvatarPath;

    // combining image section together
    user_path_in_image.appendChild(user_image);
    div_user_image.appendChild(user_path_in_image);

    // creating review and rating part - except user image
    let div_except_image = document.createElement('div');
    div_except_image.className = 'flex-fill pl-3 border-left';

      // creating first line's div (name, date, delete icon)
      let div_name_and_date = document.createElement('div');
      div_name_and_date.className = 'd-flex row justify-content-between';

        // creating user name
        let reviewer_name = document.createElement('p');
        reviewer_name.className = 'ml-3 mb-0 align-self-center';
        
          // creating user profile path for name
          let user_path_in_name = document.createElement('a');
          user_path_in_name.className = 'p-0 text-monospace';
          user_path_in_name.href = review.userProfilePath;
          user_path_in_name.appendChild(document.createTextNode(review.userName));

        // combining name and profile path
        reviewer_name.appendChild(user_path_in_name);

        // creating date and delete icon
        let div_date_and_delete_icon = document.createElement('div');

          // creating date
          let review_date = document.createElement('small');
          review_date.className = 'mr-3 text-muted';
          review_date.appendChild(document.createTextNode(review.reviewCreatedTime));

          // creating the deleting review part
          let remote_delete_icon = document.createElement('a');
          remote_delete_icon.setAttribute('data-remote', true);
          remote_delete_icon.rel = 'nofollow';
          remote_delete_icon.setAttribute('data-method', 'delete');
          remote_delete_icon.href = review.deleteReviewPath;

            // creating delete icon
            let delete_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
            delete_svg_icon.classList.add('icon');
            delete_svg_icon.classList.add('mr-3');

              // creating icon's path
              let delete_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
              delete_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', review.deleteIconPath);

            // combining delete icon and it's path
            delete_svg_icon.appendChild(delete_svg_icon_link);
            remote_delete_icon.appendChild(delete_svg_icon);
        
        // combining date and delete icon
        div_date_and_delete_icon.appendChild(review_date);
        div_date_and_delete_icon.appendChild(remote_delete_icon);

      // creating first line of the review part
      div_name_and_date.appendChild(reviewer_name);
      div_name_and_date.appendChild(div_date_and_delete_icon);

      // creating second line of review (review and rating)
      let div_review_and_rating = document.createElement('div');
      div_review_and_rating.className = 'row mt-3';

        // creating review section
        let div_review = document.createElement('div');
        // checking if rating's exist or not. Up to that, displaying differently
        if (review.reviewRating)
          div_review.className = 'col-md-10 flex-fill pl-3 m-0 border-right';
        else
          div_review.className = 'mr-4 flex-fill pl-3 m-0';

          // creating review body
          let review_body = document.createElement('p');
          review_body.id = 'review' + review.reviewId;
          review_body.appendChild(document.createTextNode(review.reviewBody));

        // combining review section
        div_review.appendChild(review_body);

      // inserting review body to second line
      div_review_and_rating.appendChild(div_review);
        
          if (review.reviewRating) {
            let div_rating = document.createElement('div');
            div_rating.className = 'col-md-2 pl-3 align-self-center';

              // creating rating
              let rating = document.createElement('p');
              rating.className = 'text-align-center mr-3';
              rating.appendChild(document.createTextNode(review.reviewRating));

              // inserting rating to second line
              div_rating.appendChild(rating);
              div_review_and_rating.appendChild(div_rating);

              document.getElementById('rating_radio_buttons').remove();
          }

      // creating third line
      let div_categories = document.createElement('div');
      div_categories.className = 'row justify-content-start';

        // creating textNode for categories
        let categories = document.createElement('small');
        categories.className = 'ml-3';
        categories.appendChild(document.createTextNode(review.reviewCategories));

      // inserting categories to third line
      div_categories.appendChild(categories);
    
    // inserting all lines together to div_expect_image 
    div_except_image.appendChild(div_name_and_date);
    div_except_image.appendChild(div_review_and_rating);
    div_except_image.appendChild(div_categories);

  // inserting all components together to create final view
  div_outside.appendChild(div_user_image);
  div_outside.appendChild(div_except_image);

  return div_outside;
}

Reviews.createReview = function(review) {
  var newReview = Reviews.buildReview(review);

  // creating the bottom border line
  let div_border_bottom = document.createElement('div');
  div_border_bottom.className = 'border-bottom mt-4';

  // adding the review before new_review area
  let adding_review_area = document.getElementById('adding_review');
  adding_review_area.parentElement.insertBefore(newReview, adding_review_area);
  adding_review_area.parentElement.insertBefore(div_border_bottom, adding_review_area);

  // updating rating of content
  let div_content_rating = document.getElementById('content_rating');
  
  if(review.contentRatingNumber == 4) {
    let rating_name = div_content_rating.querySelector('strong');
    rating_name.textContent = 'Rating';
    rating_name.className = 'col-md-7';

    div_content_rating.appendChild(document.createTextNode(review.contentRating));
  } else if ( review.contentRatingNumber > 4 ){
    div_content_rating.lastChild.textContent = review.contentRating;
  }
}

function clearTextareaAndCheckboxes() {
  let adding_review_textarea = document.getElementById('review_review_body');
  adding_review_textarea.value = '';
  
  let category_checkboxes = document.getElementById('category_checkboxes');
  let checkbox_array = category_checkboxes.querySelectorAll('input');
  for (i = 0; i < checkbox_array.length; i++) {
    checkbox_array[i].checked = false;
  }
}

Reviews.destroyReview = function(reviewId, contentName, length, rating, ratingNumber) {
  review = document.getElementById("review-" + reviewId);
  if( length == 0) {
    let no_reviews_added = document.createElement('h4');
    no_reviews_added.className = "mt-3";
    no_reviews_added.appendChild(document.createTextNode('No review has been added to ' + contentName +  ' so far!'));
    review.parentElement.insertBefore(no_reviews_added, review.parentElement.firstChild);
  }
  review.nextElementSibling.remove();
  review.remove();
}
