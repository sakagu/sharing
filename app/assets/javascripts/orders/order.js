$(function(){
  $('.datepicker').datepicker({
  dateFormat: 'yy-mm-dd'

 });

$("#calendar").fullCalendar({
  events: '/orders.json',
  // events:'http://www.google.com/your_feed_url/'
  
 });
 $('.menu-box__list__btn').click(function() {
 console.log("hello");
  //クリックしたらアラートを表示
  // alert('ボタンがクリックされました。');

});

});