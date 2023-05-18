/*function validateForm()
    var nome = document.getElementById("nome").value
    var nome = document.getElementById("senha").value 

    if( nome =='Crys' && senha == '123'){
        alert("OLA, crys")
    } else {
        alert("INCORRETO")
    }
  */

    var flag = true;
    function toggle(){
        flasg = !flag;
        document.getElementById("valor").innerHTML  =flag.toString();
    }