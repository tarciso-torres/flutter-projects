class ValidationMixin {

  String validateEmail(String value){
    if(value.length < 4){
      return 'Field email is mandatory';
    }

    if(!value.contains('@')){
      return 'Please check your email';
    }
    
        return null;
  }

  String validatePassword(String value){
    if(value.length < 4) {
            return 'Passoword most be at least 4 characters.';
          }
          return  null;
  }
}