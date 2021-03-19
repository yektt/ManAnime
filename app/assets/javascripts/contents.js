if( window.location.href.includes('contents') && !window.location.href.includes('new') && !window.location.href.includes('edit')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_comment').addEventListener("click", activateCommentTab);
    document.getElementById('tab_review').addEventListener("click", activateReviewTab);
    document.querySelectorAll('svg').forEach(item => {
      item.addEventListener('click', event => {
        var item_name = item.id.toString();
        switch(true) {
          case(item_name.includes('reply')):
            var reply_input = 'write_reply' + item.id.substring(5,item_name.length);
            var write_reply = document.getElementById(reply_input);
            if(write_reply.classList.contains('d-none'))
              write_reply.classList.remove('d-none');
            else
              write_reply.classList.add('d-none');  
            break;
          case(item_name.includes('edit')):
            var will_be_edited_comment = 'update_comment' + item.id.substring(4,item_name.length);
            var edit_comment = document.getElementById(will_be_edited_comment);
            var icons = document.getElementById('icons' + item.id.substring(4,item_name.length));
            var comment = document.getElementById('comment' + item.id.substring(4,item_name.length));

            edit_comment.classList.remove('d-none');
            icons.classList.remove('d-flex');
            icons.classList.add('d-none');
            comment.classList.add('d-none');
            break;
          case(item_name.includes('report')):
            var will_be_reported_comment_id = item.id.substring(6,item_name.length);
            console.log(will_be_reported_comment_id);
            document.getElementById('submit_report' + will_be_reported_comment_id).click();
            break;
        }
      })
    })
  }, false);
}

function activateCommentTab() {
  changeTab('comment', 'review', 'tab_comment', 'tab_review');
}

function activateReviewTab() {
  changeTab('review', 'comment', 'tab_review', 'tab_comment');
}

