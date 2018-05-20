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
    if (split_button_yes == "true") {
      $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Split' id='transfer-btn' class='btn btn-outline-success my-2 my-sm-0' data-disable-with='Splitting...'>");
      $('#split-entry').hide();
    }
});

$(document).on('change','#mentry_split_false', function(){
    split_button_no = "true";
    split_button_yes = "false";
    $( "#mentry_split_true" ).prop( "checked", false );
    if (split_button_no == "true")
      $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Create Entry' id='transfer-btn' class='btn btn-outline-success my-2 my-sm-0' data-disable-with='Creating Entry...'>");
      $('#split-entry').show();
});


/*------------------------------------------------------*/
// Transfers
/*------------------------------------------------------*/

var select_transfer;
$(document).on('change','#mentry_mtype_id', function(){
  select_transfer = $('#mentry_mtype_id').val();
  if (select_transfer == 2) {
    // alert("You selected transfer!");
    $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Transfer' id='transfer-btn' class='btn btn-outline-success my-2 my-sm-0' data-disable-with='Transferring To...'>");
  }
  else {
    // alert("What's going on here?");
    $('#transfer-btn').replaceWith("<input type='submit' name='commit' value='Create Entry' id='transfer-btn' class='btn btn-outline-success my-2 my-sm-0' data-disable-with='Creating Entry...'>");
  }
});

var select_amount;
$(document).on('input','.first_amount', function(){
  select_amount = $('.first_amount').val();
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
