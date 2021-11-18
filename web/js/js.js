function mostrar(){
    if(document.getElementById('addmember').checked){
        document.getElementById('member').style.display='block';
        document.getElementById('user').style.display='none';
        document.getElementById('del').style.display='none';
        document.getElementById('col1').style.display='none';
    }
    else if(document.getElementById('adduser').checked){
        document.getElementById('member').style.display='none';
        document.getElementById('user').style.display='block';
        document.getElementById('del').style.display='none';
        document.getElementById('col1').style.display='none';
    }
    else if(document.getElementById('delete').checked){
        document.getElementById('member').style.display='none';
        document.getElementById('user').style.display='none';
        document.getElementById('del').style.display='block';
        document.getElementById('col1').style.display='none';
    }
    
    if(document.getElementById('regev').checked){
        document.getElementById('eval').style.display='block';
    }
}

function tabla(){
    document.getElementById('tabev').style.display='block';
}


function calculo(){
    var peso = document.getElementById("peso").value;
    var estatura = document.getElementById("estatura").value;
    var estaturaC = estatura * estatura;
    var imc = peso / estaturaC;
    var imcC = Math.round(imc * 10000);
    var estado;
     document.getElementById("imc").value = imcC;
     
    if(imcC < 18.5){
        estado = "Peso insuficiente";
    }else if(imcC > 18.4 && imcC <=25){
        estado = "Peso normal";
    }else if(imcC > 24.9 && imcC <=30){
        estado = "Preobesidad";
    }else if(imcC > 29.9){
        estado = "Obesidad";
    }
    document.getElementById("estado").value = estado;
    
    
    
}




        calc = document.getElementById("calc");
	kg = document.getElementById("peso");
	m = document.getElementById("m");
	imc = document.getElementById("imc");
	lectura = document.getElementById("lectura");

	calc.onclick = function(){
		if(kg.value!="" && m.value!=""){
			imcx = (kg.value / (m.value* m.value));
			imc.innerHTML = imcx
			console.log(imcx);

			if(imcx<18.5){ lectura.innerHTML = "Bajo"; }
			else if(imcx>=18.5 && imcx<=24.9){ lectura.innerHTML = "Normal"; }
			else if(imcx>=25 && imcx<=29.9){ lectura.innerHTML = "Alto"; }
			else if(imcx>30){ lectura.innerHTML = "Muy alto"; }

		}else{
			alert("Debes ingresar peso y altura.")
		}

	};