// $(document).on('turbolinks:load', function() {
// $('h4').each(function(){
//     $(this).find('.eventDate').each(function() {
//       console.log('.eventDate');
//       var formattedDate = moment(dateHTML).format('dddd, MMM Do'); 
//       $('#eventDate').html(formattedDate);

//     }); // end of find function
// }); //end of h4 loop


// }); //end of document load function

// loop over array and change h4 looking for id of event Date


// $(document).on('turbolinks:load', function() {
//   $('.date-format').each(function() {
//     // console.log('h4');
//   var dateHTML = $('#eventDate').html()
//   console.log(dateHTML);
//   var formattedDate = moment(dateHTML).format('dddd, MMM Do');
//   $('#eventDate').html(formattedDate);
//   });

//   // var timeHTML = $('#eventTime').html()
//   // var formattedTime = moment(timeHTML, "hh").format('h:00a');
//   // $('#eventTime').html(formattedTime)

// });

$(document).on('turbolinks:load', function() {
  var dateHTML = $('#eventDate').html()
  var formattedDate = moment(dateHTML).format('dddd, MMM Do');
  $('#eventDate').html(formattedDate);

  var timeHTML = $('#eventTime').html()
  var formattedTime = moment(timeHTML, "hh").format('h:00a');
  $('#eventTime').html(formattedTime)

});