$(function(){
$('.search-btn').on("click", function(e){
  e.preventDefault();
  console.log('成功');
let input = $("#search-field").val();
$.ajax({
  type:'GET',
  url:"/orders",
  data: { keyword: input },
  dataType: 'json'
})
.done(function(orders){



})



});

});