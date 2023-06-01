
    var form_fields = document.getElementsByTagName('input')
    form_fields[1].placeholder = "Enter Full Name"
    form_fields[2].placeholder = "Enter Email"
    form_fields[3].placeholder = "Subject"
    form_fields[4].placeholder = "Write here.........."


   for(field in form_fields){
   form_fields[field].className += ' my-3'
   }

