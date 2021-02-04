// ==UserScript==
// @name     PADX latents move
// @version  1
// @grant    none
// @include  *puzzledragonx.com/en/monster.asp*
// @require https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js 
// ==/UserScript==

$leftCol = $('#compareprofile > table > * > tr > td:first-of-type');
$rightCol = $('#compareprofile > table > * > tr > td:last-of-type');

$rightColCell = $rightCol.children().last();

$rightColCell.detach().appendTo($leftCol);

$leftCol.find('table:last-of-type').css('width','');


var i = 0;
$('.series img.onload').each(function() {
  if (i === 0) {
    $(this).closest('table#tablestat').find('h2').append('<button id="series-view-toggler">toggle view</button>');

      
    $('#series-view-toggler').click(function(e) {
      e.preventDefault();
      console.log('normal view');
      $(this).closest('table').toggleClass('normal-view');
    });
    i += 1;
  }
  $(this).on('load', function() {
    let title = $(this).attr('title');
    let regexp = /No\.(\d+) (.*)/;
    let matches = title.match(regexp);
    console.log(matches);
    $(this).closest('a').attr('data-displaynumber', matches[1]);
    $(this).closest('a').attr('data-displaytitle', matches[2]);
  });
});
