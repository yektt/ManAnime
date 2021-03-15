Comments = {};

Comments.buildComment = function( comment ) {
  if( comment.contentsCommentsLength == 1) {
    let comment_area = document.getElementById('comment');
    comment_area.firstElementChild.remove();
  }

  // outline div for comment
  let div_outside = document.createElement('div');
  div_outside.id = 'comment-' + comment.commentId;
  
    // div comment
    let div_comment = document.createElement('div');
    div_comment.className = 'd-flex flex-row mt-4';

      // user image part
      let div_user_image = document.createElement('div');
      div_user_image.className = 'col-md-1 p-0 mr-3';

        // creating anchor for user profile path
        let user_path_in_image = document.createElement('a');
        user_path_in_image.className = 'p-0'
        user_path_in_image.href = comment.userProfilePath;
        
          // creating user image 
          let user_image = document.createElement('img');
          user_image.alt = 'Avatar for ' + comment.userName;
          user_image.className = 'card-img';
          user_image.src = comment.userAvatarPath;

      // combining user image part
      user_path_in_image.appendChild(user_image);
      div_user_image.appendChild(user_path_in_image);

      // other part of the comment 
      let div_except_image = document.createElement('div');
      div_except_image.className = 'flex-fill pl-3 border-left';

        // creating name and date line
        let div_name_and_date = document.createElement('div');
        div_name_and_date.className = 'd-flex row justify-content-between mb-2';

          // creating user name
          let commenter_name = document.createElement('p');
          commenter_name.className = 'ml-3 mb-0 align-self-center text-monospace';

            // creating a link to commenter profile
            let user_path_in_name = document.createElement('a');
            user_path_in_name.className = 'p-0 text-monospace';
            user_path_in_name.href = comment.userProfilePath;
            user_path_in_name.appendChild(document.createTextNode(comment.userName));

          //combining user name and profile path
          commenter_name.appendChild(user_path_in_name);

          let div_date_and_delete_icon =  document.createElement('div');

            // creating comment date
            let comment_date = document.createElement('small');
            comment_date.className = 'mr-3 text-muted';
            comment_date.appendChild(document.createTextNode(comment.commentCreatedTime));

            // creating delete icon with delete comment path
            let remote_delete_icon = document.createElement('a');
            remote_delete_icon.setAttribute('data-remote', 'true');
            remote_delete_icon.href = comment.deleteCommentPath;

              // creating delete icon
              let delete_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
              delete_svg_icon.classList.add('icon');
              delete_svg_icon.classList.add('mr-3');

              // creating icon's path
              let delete_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
              delete_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', comment.deleteIconPath);
            
            // combining delete icon and it's path
            delete_svg_icon.appendChild(delete_svg_icon_link);
            remote_delete_icon.appendChild(delete_svg_icon);
          
          // combining delete icon and date 
          div_date_and_delete_icon.appendChild(comment_date);
          div_date_and_delete_icon.appendChild(remote_delete_icon);

        // combining user name and date & delete icon
        div_name_and_date.appendChild(commenter_name);
        div_name_and_date.appendChild(div_date_and_delete_icon);

        let comment_body = document.createElement('p');
        comment_body.id = 'comment' + comment.commentId;
        comment_body.appendChild(document.createTextNode(comment.commentBody));

        let div_update = document.createElement('div');
        div_update.className = 'd-none';
        div_update.id = 'update_comment' + comment.commentId;

          // creating form for updating comment
          let form_update = document.createElement('form');
          form_update.id = 'edit_comment_' + comment.commentId;
          form_update.className = 'edit_comment';
          form_update.action = comment.commentUpdatePath;
          form_update.method = 'post';

            //creating textarea of the form-update
            let fieldset_textarea_update = document.createElement('fieldset');
            fieldset_textarea_update.className = 'row flex-fill pl-3 mr-3';

              //creating textarea for update form
              let textarea_update = document.createElement('textarea');
              textarea_update.id = 'comment_comment_body';
              textarea_update.name = 'comment[comment_body]'
              textarea_update.className = 'form-control';
              textarea_update.rows = '4';
              textarea_update.value = comment.commentBody;

            // putting textarea to fieldset for textarea
            fieldset_textarea_update.appendChild(textarea_update);

            // creating submit button fieldset
            let fieldset_submit_button_update = document.createElement('fieldset');
            fieldset_submit_button_update.className = 'd-flex justify-content-end';

              // creating submit button for update form
              let submit_button_update = document.createElement('input');
              submit_button_update.type = 'submit';
              submit_button_update.name = 'commit';
              submit_button_update.value = 'Update Comment';
              submit_button_update.className = 'btn btn-white mt-2';

            // putting submit button and button fieldset together
            fieldset_submit_button_update.appendChild(submit_button_update);

          // adding fieldsets to the form
          form_update.appendChild(fieldset_textarea_update);
          form_update.appendChild(fieldset_submit_button_update);

        // adding form to the div_update
        div_update.appendChild(form_update);

        // creating icons div
        let div_icons = document.createElement('div');
        div_icons.className = 'd-flex justify-content-end';
        div_icons.id = 'icon'+ comment.commentId;

          // creating reply icon
          let reply_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
          reply_svg_icon.classList.add('icon');
          reply_svg_icon.classList.add('ml-2');
          reply_svg_icon.id = 'reply'+ comment.commentId;

            // creating icon's path
            let reply_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
            reply_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', comment.replyIconPath);

            reply_svg_icon.appendChild(reply_svg_icon_link);

            //  added JS function for replying the comment %>
            reply_svg_icon.addEventListener("click", function() {
              let write_reply = document.getElementById('write_reply' + comment.commentId);
              if(write_reply.classList.contains('d-none'))
                write_reply.classList.remove('d-none');
              else
                write_reply.classList.add('d-none');
            }, false);

          // creating edit icon
          let edit_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
          edit_svg_icon.classList.add('icon');
          edit_svg_icon.classList.add('ml-2');
          edit_svg_icon.id = 'edit'+ comment.commentId;

            let edit_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
            edit_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', comment.editIconPath);

            edit_svg_icon.appendChild(edit_svg_icon_link);

            // added JS function for updating comment %>
            edit_svg_icon.addEventListener("click", function() {
              let edit_comment = document.getElementById('update_comment' + comment.commentId);
              if(edit_comment.classList.contains('d-none')) {
                edit_comment.classList.remove('d-none');
                comment_body.classList.add('d-none');
                div_icons.classList.remove('d-flex');
                div_icons.classList.add('d-none');
              }
            }, false);

        // implementing icons to the div_icons
        div_icons.appendChild(reply_svg_icon);
        div_icons.appendChild(edit_svg_icon);

        let div_reply =  document.createElement('div');
        div_reply.id = 'write_reply'+ comment.commentId;
        div_reply.classList = 'mt-3 d-none';

          //creating form for adding a reply to the comment
          let form_reply = document.createElement('form');
          form_reply.id = 'new_reply';
          form_reply.classList = 'new_reply';
          form_reply.action = comment.replyCommentPath;
          form_reply.setAttribute('data-remote', true);
          form_reply.method = 'post';

            // creating textarea of the form-reply
            let fieldset_textarea_reply = document.createElement('fieldset');
            fieldset_textarea_reply.classList = 'ml-2';

              // creating textarea for reply form
              let textarea_reply = document.createElement('textarea');
              textarea_reply.id = 'reply_reply_body';
              textarea_reply.classList = 'form-control mb-2';
              textarea_reply.rows = '3';
              textarea_reply.name = 'reply[reply_body]';

            // putting textarea and fieldset for textarea together
            fieldset_textarea_reply.appendChild(textarea_reply);

            // creating submit button fieldset
            let fieldset_submit_button_reply = document.createElement('fieldset');
            fieldset_submit_button_reply.classList = 'd-flex justify-content-end';

              // creating submit button for submitting reply
              let submit_button_reply =  document.createElement('input');
              submit_button_reply.type = 'submit';
              submit_button_reply.value = 'Add Reply';
              submit_button_reply.name = 'commit';
              submit_button_reply.className = 'btn btn-white';

            // putting submit button and fieldset for the button together
            fieldset_submit_button_reply.appendChild(submit_button_reply);

          // adding fieldsets to the form
          form_reply.appendChild(fieldset_textarea_reply);
          form_reply.appendChild(fieldset_submit_button_reply);

        // adding the form to the div_reply
        div_reply.appendChild(form_reply);

      // combining all components of div_except_image
      div_except_image.appendChild(div_name_and_date);
      div_except_image.appendChild(comment_body);
      div_except_image.appendChild(div_update);
      div_except_image.appendChild(div_icons);
      div_except_image.appendChild(div_reply);

    // implementing main divs to the div_comment
    div_comment.appendChild(div_user_image);
    div_comment.appendChild(div_except_image);

  div_outside.appendChild(div_comment);

  return div_outside;
}

Comments.createComment = function( comment ) {
  var newComment = Comments.buildComment(comment);

  // creating the bottom border line
  let div_border_bottom = document.createElement('div');
  div_border_bottom.className = 'border-bottom mt-4';

  // adding comments before textarea
  let adding_comment_area = document.getElementById('adding_comment');
  adding_comment_area.parentElement.insertBefore(newComment, adding_comment_area);
  adding_comment_area.parentElement.insertBefore(div_border_bottom, adding_comment_area);
}

Comments.destroyComment = function(commentId, contentName, length) {
  comment = document.getElementById("comment-" + commentId);
  if( length == 0) {
    var no_comments_added = document.createElement('h4');
    no_comments_added.className = "mt-3";
    no_comments_added.appendChild(document.createTextNode('No comments has been added to' + contentName +  'so far!'));
    comment.parentElement.insertBefore(no_comments_added, comment.parentElement.firstChild);
  }
  comment.nextElementSibling.remove();
  comment.remove();

  let adding_comment_area = document.getElementById('adding_comment');
  adding_comment_area.value = "";
}
