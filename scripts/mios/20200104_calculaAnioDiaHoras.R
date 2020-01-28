#Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
#¿a qué hora de qué día de qué año llegaríamos a los 250 millones de segundos?
#¡Cuidado con los años bisiestos!

getSegundosEnAnio <- function (aaaa){
  segundosEnUnDia= 24*3600;
  if(isBisiesto(aaaa)){
    segundosEnUnDia * 366;
  }else{
    segundosEnUnDia * 365;
  }
}

isBisiesto = function (anio){
  if(anio%%4==0 && anio%%100!=0){
    ## es bisiesto
    TRUE;
  }else{
    ## no es bisiesto
    FALSE;
  }
}

calculaAnioDiasYHoraDeLlegada <- function(anioInicio, totSegundos){
  horasEnUndia= 24;
  segsEnUnaHora = 3600;
  segsEnUnDia = horasEnUndia * segsEnUnaHora;

  segundosRemanentes = totSegundos;
  resultadoEnAnios = anioInicio;
  resultadoEnDias = 0;
  resultadoEnHoras = 0;
  while(segundosRemanentes != 0){
    segundosEnElAnio = getSegundosEnAnio(resultadoEnAnios);
    if(segundosRemanentes > segundosEnElAnio){
      segundosRemanentes = segundosRemanentes - segundosEnElAnio;
      resultadoEnAnios = resultadoEnAnios + 1;
    } else{
      resultadoEnDias = segundosRemanentes %/% segsEnUnDia;
      resultadoEnHoras = (segundosRemanentes %% segsEnUnDia) / segsEnUnaHora;
      segundosRemanentes = 0;
    }
   } ##while
  
  cat("Anio: ", resultadoEnAnios, "\n");
  cat("Dias: ", resultadoEnDias, "\n");
  cat("Horas: ", floor(resultadoEnHoras)[1]); ## apanio casual para que no se ensenie lo que "parece" un array al imprimir en consola
  ## faltaría calcular el mes y el día del mes pero me doy por satisfecho con lo desarrollado hasta aquí :-)

}

calculaAnioDiasYHoraDeLlegada(2018,250e6)

