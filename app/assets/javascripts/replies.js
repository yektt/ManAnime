Replies = {};

// function for creating reply asynchronously
Replies.createReply = function( reply ) {
  const div_outside = document.createElement('div');
  div_outside.id = 'reply-' + reply.replyId;

  const top_border_div = document.createElement('div');
  top_border_div.classList = 'border-bottom mt-3';
  div_outside.appendChild(top_border_div);

  const div_reply = document.createElement('div');
  div_reply.classList = 'flex-fill d-flex justify-content-end mt-3 p-0';

  const div_reply_1 = document.createElement('div');
  div_reply_1.classList = 'col-md-1 p-0 mr-4';

  const div_reply_1_user_link = document.createElement('a');
  div_reply_1_user_link.href = reply.userProfilePath;

  const avatar_replier = document.createElement('img');
  avatar_replier.alt = 'Avatar for <%= current_user.name %>';
  avatar_replier.className = 'card-img';
  avatar_replier.src = reply.userAvatarPath;

  div_reply_1_user_link.appendChild(avatar_replier);
  div_reply_1.appendChild(div_reply_1_user_link);

  const div_reply_2 = document.createElement('div');
  div_reply_2.classList = 'flex-fill pl-3 border-left';

  const div_reply_2_1 = document.createElement('div');
  div_reply_2_1.classList = 'd-flex row justify-content-between mb-2';
  div_reply_2_1.id = 'user_name_and_date';

  let replier_name = document.createElement('p');
  replier_name.className = 'ml-3 mb-0 align-self-center';

  let replier_name_link = document.createElement('a');
  replier_name_link.className = 'p-0 text-monospace';
  replier_name_link.href = reply.userProfilePath;
  replier_name_link.appendChild(document.createTextNode(reply.userName));
  replier_name.appendChild(replier_name_link);

  let holder_div = document.createElement('div');

  const comment_date = document.createElement('small');
  comment_date.className = 'mr-3 text-muted';
  comment_date.appendChild(document.createTextNode(reply.replyCreateTime));

  // creating delete icon with delete reply path %>
  let delete_reply_link = document.createElement('a');
  delete_reply_link.setAttribute('data-remote', 'true');
  delete_reply_link.href = reply.deleteReplyPath;

  let delete_svg_icon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
  delete_svg_icon.classList.add('icon');
  delete_svg_icon.classList.add('icon-small');
  delete_svg_icon.classList.add('mr-3');

  let delete_svg_icon_link = document.createElementNS('http://www.w3.org/2000/svg', 'use');
  delete_svg_icon_link.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', reply.deleteIconPath);

  delete_svg_icon.appendChild(delete_svg_icon_link);
  delete_reply_link.appendChild(delete_svg_icon);

  reply_body = document.createElement('p');
  reply_body.appendChild(document.createTextNode(reply.replyBody));

  holder_div.appendChild(comment_date);
  holder_div.appendChild(delete_reply_link);

  div_reply_2_1.appendChild(replier_name);
  div_reply_2_1.appendChild(holder_div);

  div_reply_2.appendChild(div_reply_2_1);
  div_reply_2.appendChild(reply_body);

  div_reply.appendChild(div_reply_1);
  div_reply.appendChild(div_reply_2);

  div_outside.appendChild(div_reply);

  const reply_adding = document.getElementById('write_reply' + reply.commentId);
  reply_adding.parentElement.insertBefore(div_outside, reply_adding);

  // cleaning the textarea value 
  reply_adding.querySelector('textarea').value = "";
  reply_adding.classList.add('d-none');

}

// function for deleting reply asynchronously
Replies.destroyReply = function( replyId, replies_length ) {
  reply = document.getElementById("reply-" + replyId);
  reply.remove();
}
