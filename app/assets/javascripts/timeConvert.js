$(document).on('turbolinks:load', function() {
  var dateHTML = $('#eventDate').html()
  var formattedDate = moment(dateHTML).format('dddd, MMM Do');
  $('#eventDate').html(formattedDate);

  var timeHTML = $('#eventTime').html()
  var formattedTime = moment(timeHTML, "hh").format('h:00a');
  $('#eventTime').html(formattedTime)

});