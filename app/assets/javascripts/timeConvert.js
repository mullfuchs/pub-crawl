
$(document).on('turbolinks:load', function() {
  $('.eventDate').each(function(index, elem) {
    // console.log('h4');
    var dateHTML = elem.innerHTML;
    console.log(dateHTML);
    if($(elem).hasClass('eventDate')) {
      var formattedDate = moment(dateHTML).format('dddd, MMM Do');
      $(elem).html(formattedDate);
    } 

  });
  $('.eventTime').each(function(index, elem) {
    // console.log('h4');
    var dateHTML = elem.innerHTML;
    console.log(dateHTML);
    if($(elem).hasClass('eventTime')) {
      var formattedTime = moment(dateHTML, "hh").format('h:00a');
      $(elem).html(formattedTime);
    } 

  });

});
