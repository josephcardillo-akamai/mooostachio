
var select_transfer;
$(document).on('change','#transfer', function(){
  select_transfer = $('#transfer').val();
  if (select_transfer == 3) {
    // alert("You selected transfer!");
    $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Transfer To...' id='transfer-btn' data-disable-with='Create Entry'>");
  }
  else {
    alert("What's going on here?");
  }
});


var select_amount;
$(document).on('input','#mentry_amount', function(){
  select_amount = $('#mentry_amount').val();
});
