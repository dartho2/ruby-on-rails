// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-rails-templates
//= require angular-ui-router
//= require turbolinks
//= require_tree .
//= require bootstrap
//
// $(document).on 'click', 'form .remove_fields', (event) ->
// $(this).prev('input[type=hidden]').val('1')
// $(this).closest('fieldset').hide()
// event.preventDefault()
//
// $(document).on 'click', 'form .add_fields', (event) ->
// time = new Date().getTime()
// regexp = new RegExp($(this).data('id'), 'g')
// $(this).before($(this).data('fields').replace(regexp, time))
// event.preventDefault()
//
// $('.btn-number').click(function(e){
//     e.preventDefault();
//
//     fieldName = $(this).attr('data-field');
//     type      = $(this).attr('data-type');
//     var input = $("input[name='"+fieldName+"']");
//     var currentVal = parseInt(input.val());
//     if (!isNaN(currentVal)) {
//         if(type == 'minus') {
//
//             if(currentVal > input.attr('min')) {
//                 input.val(currentVal - 1).change();
//             }
//             if(parseInt(input.val()) == input.attr('min')) {
//                 $(this).attr('disabled', true);
//             }
//
//         } else if(type == 'plus') {
//
//             if(currentVal < input.attr('max')) {
//                 input.val(currentVal + 1).change();
//             }
//             if(parseInt(input.val()) == input.attr('max')) {
//                 $(this).attr('disabled', true);
//             }
//
//         }
//     } else {
//         input.val(0);
//     }
// });
// $('.input-number').focusin(function(){
//     $(this).data('oldValue', $(this).val());
// });
// $('.input-number').change(function() {
//
//     minValue =  parseInt($(this).attr('min'));
//     maxValue =  parseInt($(this).attr('max'));
//     valueCurrent = parseInt($(this).val());
//
//     name = $(this).attr('name');
//     if(valueCurrent >= minValue) {
//         $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
//     } else {
//         alert('Sorry, the minimum value was reached');
//         $(this).val($(this).data('oldValue'));
//     }
//     if(valueCurrent <= maxValue) {
//         $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
//     } else {
//         alert('Sorry, the maximum value was reached');
//         $(this).val($(this).data('oldValue'));
//     }
//
//
// });
// $(".input-number").keydown(function (e) {
//     // Allow: backspace, delete, tab, escape, enter and .
//     if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
//         // Allow: Ctrl+A
//         (e.keyCode == 65 && e.ctrlKey === true) ||
//         // Allow: home, end, left, right
//         (e.keyCode >= 35 && e.keyCode <= 39)) {
//         // let it happen, don't do anything
//         return;
//     }
//     // Ensure that it is a number and stop the keypress
//     if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
//         e.preventDefault();
//     }
// });
