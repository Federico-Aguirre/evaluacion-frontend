const objeto = document.querySelectorAll('#header_texto_1');
const objeto2 = document.querySelectorAll('#header_texto_2');
const objeto3 = document.querySelectorAll('#footer');

observer = new IntersectionObserver((entries) => {

    entries.forEach(entry => {
      if(entry.intersectionRatio > 0) {
        entry.target.style.animation = `anim1 ${entry.target.dataset.delay} forwards ease-out`;
      }
      else {
        entry.target.style.animation = 'n';
      }
      })
  })
  
  objeto.forEach(image => {
      observer.observe(image)
  })

  objeto2.forEach(image => {
    observer.observe(image)
  })

  objeto3.forEach(image => {
    observer.observe(image)
  })