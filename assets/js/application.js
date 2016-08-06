/* global $ */
$(function () {
  $('label.tree-toggler').click(function () {
    $(this).parent().children('ul.nav').toggle(300);
  });
});
