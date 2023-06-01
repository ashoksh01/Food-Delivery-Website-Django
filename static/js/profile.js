var form_fields = document.getElementsByTagName('input')
    form_fields[1].placeholder = 'Enter first name';
    form_fields[2].placeholder = 'Enter last name';
    form_fields[3].placeholder = 'Enter phone number';

    for (var field in form_fields){
    field.className += ' my-2'
    }