// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.backgroundPosition.js" type="text/javascript"></script>
<script type="text/javascript">
  $(function(){

    $('#midground').css({backgroundPosition: '0px 0px'});
    $('#foreground').css({backgroundPosition: '0px 0px'});
    $('#background').css({backgroundPosition: '0px 0px'});

    $('#midground').animate({
      backgroundPosition:"(-10000px -2000px)"
    }, 240000, 'linear');

    $('#foreground').animate({
      backgroundPosition:"(-10000px -2000px)"
    }, 120000, 'linear');

    $('#background').animate({
      backgroundPosition:"(-10000px -2000px)"
    }, 480000, 'linear');

  });
</script>
