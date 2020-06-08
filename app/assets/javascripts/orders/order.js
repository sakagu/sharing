$(function(){
  $('.datepicker').datepicker({
  dateFormat: 'yy-mm-dd'
  
 });

$("#calendar").fullCalendar({
  header: {
    left: 'prev,next today',
    center: 'title',
    right: ''
  },
  
  events: '/orders.json',
 });
//  events: [
//   {
//     id: 'orders/${order.id}/edit'
//     // title: 'my event',
//     // start: '2018-09-01'
//   }

 
    







});