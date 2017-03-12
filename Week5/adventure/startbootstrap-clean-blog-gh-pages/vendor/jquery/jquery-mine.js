$('button[name='accept-button']').click(function(){
   console.log($(this)[0].innerText)
    if($(this)[0].innerText === "Accept"){
      $('.post-heading').html('How ambitious of you...')
    } else  if($(this)[0].innerText === "Decline"){
      $('span').html('test 2')
    }else{
    $('span').html('test 3')
    }
})
