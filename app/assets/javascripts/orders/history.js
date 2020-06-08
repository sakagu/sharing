$(function(){
  function addOrder(order){

      let html = 
      `
      <div class="search-order-content">
      <P>${order.company}</P>
      <P>現場名:${order.site_name}</P>
      <P>納入場所:${order.delively_place}</P>
      <div class="edit-path">
      <a href= "/orders/${order.id}/edit" >詳細</a>
      </div>
      </div>
      `
      $(".order-search-result").append(html);

  }

  function addNoOrder(){
    let html = `
              <div class="nosearch">
              <p>現場名がみつかりません</p>
                `
      $(".order-search-result").append(html);
  }


$('.search-btn').on("click", function(e){
  e.preventDefault();
let input = $("#search-field").val();
$.ajax({
  type:'GET',
  url:"/orders/search",
  data: { keyword: input },
  dataType: 'json'
})
.done(function(orders){
  $(".order-search-result").empty();
  if (orders.length !== 0) {
    orders.forEach(function(order){
      addOrder(order);
    }); 
}else if (input.length == 0) {
  return false
}else{
  addNoOrder();
  }
  
})
    .fail(function(){
      alert("通信エラーです。表示できません。");
    });


});
});