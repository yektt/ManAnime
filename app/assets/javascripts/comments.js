Comments = {};

Comments.createComment = function( comment ) {
  if( comment.contentsCommentsLength == 1) {
    let comment_area = document.getElementById('comment');
    comment_area.firstElementChild.remove();
  }
  
  let div_outside = document.createElement('div');
  div_outside.id = 'comment-' + comment.commentId;
  
  let div = document.createElement('div');
  div.className = 'd-flex flex-row mt-4';
  
  let div1 = document.createElement('div');
  div1.className = 'col-md-1 p-0 mr-3';
  
  let a1 = document.createElement('a');
  a1.className = 'p-0'
  a1.href = comment.userProfilePath;
  
  let avatar_commenter = document.createElement('img');
  avatar_commenter.alt = 'Avatar for ' + comment.userName;
  avatar_commenter.className = 'card-img';
  avatar_commenter.src = comment.userAvatarPath;
  
  a1.appendChild(avatar_commenter);
  div1.appendChild(a1);
  
  let div2 = document.createElement('div');
  div2.className = 'flex-fill pl-3 border-left';
  
  let div2_1 = document.createElement('div');
  div2_1.className = 'd-flex row justify-content-between mb-2';
  
  let commenter_name = document.createElement('p');
  commenter_name.className = 'ml-3 mb-0 align-self-center text-monospace';
  
  let commenter_name_link = document.createElement('a');
  commenter_name_link.className = 'p-0 text-monospace';
  commenter_name_link.href = comment.userProfilePath;
  commenter_name_link.appendChild(document.createTextNode(comment.userName));
  commenter_name.appendChild(commenter_name_link);
  
  let holder_div = document.createElement('div');
  
  let comment_date = document.createElement('small');
  comment_date.className = 'mr-3 text-muted';
  comment_date.appendChild(document.createTextNode(comment.commentCreatedTime));
  
  // creating delete icon with delete comment path
  let delete_comment_link = document.createElement('a');
  delete_comment_link.setAttribute('data-remote', 'true');
  delete_comment_link.href = comment.deleteCommentPath;
  
  let delete_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
  delete_svg_icon.classList.add('icon');
  delete_svg_icon.classList.add('mr-3');
  
  let delete_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
  delete_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', comment.deleteIconPath);
  
  delete_svg_icon.appendChild(delete_svg_icon_link);
  delete_comment_link.appendChild(delete_svg_icon);
  
  holder_div.appendChild(comment_date);
  holder_div.appendChild(delete_comment_link);
  
  div2_1.appendChild(commenter_name);
  div2_1.appendChild(holder_div);
  
  var comment_body = document.createElement('p');
  comment_body.id = 'comment' + comment.commentId;
  comment_body.appendChild(document.createTextNode(comment.commentBody));
  
  div2.appendChild(div2_1);
  div2.appendChild(comment_body);
  
  div.appendChild(div1);
  div.appendChild(div2);
  
  div_border = document.createElement('div');
  div_border.className = 'border-bottom mt-4';
  
  div_outside.appendChild(div);
  div_outside.appendChild(div_border);
  
  // adding comments before textarea
  let adding_comment_area = document.getElementById('adding_comment');
  adding_comment_area.parentElement.insertBefore(div_outside, adding_comment_area);
  adding_comment_area.value = "";
  
  // removing all asynchronously adding areas on the page 
  block_new_entry();
}

Comments.destroyComment = function(commentId, contentName, length) {
  comment = document.getElementById("comment-" + commentId);
  if( length == 0) {
    var no_comments_added = document.createElement('h4');
    no_comments_added.className = "mt-3";
    no_comments_added.appendChild(document.createTextNode('No comments has been added to' + contentName +  'so far!'));
    comment.parentElement.insertBefore(no_comments_added, comment.parentElement.firstChild);
  }
  comment.remove();

  let adding_comment_area = document.getElementById('adding_comment');
  adding_comment_area.value = "";
}