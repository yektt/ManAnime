if( window.location.href.includes('contents')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_comment').addEventListener("click", activateCommentTab);
    document.getElementById('tab_review').addEventListener("click", activateReviewTab);
  }, false);
}

function activateCommentTab() {
  changeTab('comment', 'review', 'tab_comment', 'tab_review');
}

function activateReviewTab() {
  changeTab('review', 'comment', 'tab_review', 'tab_comment');
}
