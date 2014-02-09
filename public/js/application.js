// We are trying to update number of votes when we click a button

$(document).ready(function(){

// we are listening for any 'form' to be clicked
//'e' is the event created when we click a button
  $("form").submit(function(e){
    e.preventDefault();

    // 'var = target' is the hidden data that we stored on the form. (See 'index.erb')
    // The hidden data is the post id we want to update.
    var target = $(e.target).data("id");

    // We send the id of the post to our '/up' method in the backend.
    // The '/up' method will update the votes and return the value of the votes (data)
    $.post( "/up",  {'id': target}, function(data){

      // Then we select the element in the html where we display the votes
      // (it will have an id='vote<%=vote.id%>'),
      // and change the text with the new value ('data')
      $('#vote' + target).text("votes: " + data);
    });
  });
});
