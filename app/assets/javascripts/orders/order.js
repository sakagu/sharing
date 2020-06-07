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
  
  // height: 800,

  events: '/orders.json',
 });













});