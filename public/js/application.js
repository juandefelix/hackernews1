

// function counter = {
//    this.up = $(".up");
//    this.down = $(".down")}

// $(document).ready(function() {

//   $(".up").click(function(){

//   });
//   $(.down).click(function(){

//   });
// });


$(document).ready(function(){

  // var up = $(".up")

  $("form").submit(function(e){
    e.preventDefault();
    $.post( "/up",  $("form").serialize(), function(data){
      console.log(e.target);
    });


  });



  // $.ajax({
  //   type: "POST",
  //   url : '/up',
  //   data : e.serialize();
  //   success : function(result){
  //     console.log("hola");}
  //  });

});
