
class Index {
  constructor() {
    var $win = $(window);
    var $img = $('.fadeInScroll');

    $win.on('scroll', function () {
      var scrollTop = $win.scrollTop();
      $img.each(function () {
        var $self = $(this);
        var prev=$self.offset();
        if(prev){
          var pt=0;
          pt=prev.top-$win.height();    
          $self.css({
            opacity: (scrollTop-pt)/ ($self.offset().top-pt)
          });
        }
        else{
          $self.css({
            opacity: 1
          });
        }  
      });

    }).scroll();
  }

}

export default Index;
