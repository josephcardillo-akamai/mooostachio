
var select_transfer;
$(document).on('change','#transfer', function(){
  select_transfer = $('#transfer').val();
  if (select_transfer == 3) {
    // alert("You selected transfer!");
    $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Transfer To...' id='transfer-btn' data-disable-with='Create Entry'>");
  }
  else {
    // alert("What's going on here?");
    $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Create Entry' id='transfer-btn' data-disable-with='Create Entry'>");
  }
});

var split_button;
$(document).on('change','#split-yes', function(){
  split_button = $('#split-yes').val();
  if (split_button == 'on') {
    // alert('split button on!');
    
  }
});

var select_amount;
$(document).on('input','#mentry_amount', function(){
  select_amount = $('#mentry_amount').val();
});

var select_status;
$(document).on('change','#mentry_mstatus_id', function(){
  select_status = $('#mentry_mstatus_id').val();
});

var select_account;
$(document).on('change','#mentry_maccount_id', function(){
  select_account = $('#mentry_maccount_id').val();
});

var select_category;
$(document).on('change','#mentry_mcategory_id', function(){
  select_category = $('#mentry_mcategory_id').val();
});

var select_location;
$(document).on('change','#mentry_mlocation_id', function(){
  select_location = $('#mentry_mlocation_id').val();
});
