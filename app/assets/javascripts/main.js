/*------------------------------------------------------*/
// Splitting
/*------------------------------------------------------*/

var split_button_yes;
var split_button_no;
$(document).ready(function() {
  split_button_yes = $('#mentry_split_false').val();
  split_button_no = $('#mentry_split_true').val();
});

$(document).on('change','#mentry_split_true', function(){
    split_button_yes = "true";
    split_button_no = "false";
    $( "#mentry_split_false" ).prop( "checked", false );
});

$(document).on('change','#mentry_split_false', function(){
    split_button_no = "true";
    split_button_yes = "false";
    $( "#mentry_split_true" ).prop( "checked", false );
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
