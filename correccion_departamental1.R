#CORRECCION PRUEBA DEPARTAMENTAL 1
#PARTE 2
#EJERCICIO 1

#destino la serena / temuco / arica / punta arenas
#razonViaje vacaciones(bus) / trabajo(avion)
#horasViaje 

transporte <- "avion"

ciudad <- "punta arenas"


if(ciudad == "la serena"){
  if(transporte == "bus"){
    #calculo para bus
    print("Medio de transporte: Bus")
    print("razon de viaje: Vacaciones al norte, La Serena")
    costobus <- 4*5000+6000
    print(costobus)
    
  }else if(transporte == "avion"){
    #calculo para avion
    print("Medio de transporte: Avion")
    print("razon de viaje: Trabajo al norte, La Serena")
    costoavion <- 35*(4*5000+6000)
    print(costoavion)
  }
    
} else if(ciudad == "temuco"){
  if(transporte == "bus"){
    #calculo para bus
    print("Medio de transporte: Bus")
    print("razon de viaje: Vacaciones al sur, Temuco")
    costobus <- 12*5000+4000
    print(costobus)
  }else if(transporte == "avion"){
    #calculo para avion
    print("Medio de transporte: Avion")
    print("razon de viaje: Trabajo al sur, Temuco")
    costoavion <- 35*(12*5000+4000)
    print(costoavion)
  }
  
} else if(ciudad == "arica"){
  if(transporte == "bus"){
    #calculo para bus
    print("Medio de transporte: Bus")
    print("razon de viaje: Vacaciones al norte, Arica")
    costobus <- 24*5000+6000
    print(costobus)
  }else if(transporte == "avion"){
    #calculo para avion
    print("Medio de transporte: Avion")
    print("razon de viaje: Trabajo al norte, Arica")
    costoavion <- 35*(24*5000+6000)
    print(costoavion)
  }
  
} else if(ciudad == "punta arenas"){
  if(transporte == "bus"){
    #calculo para bus
    print("Medio de transporte: Bus")
    print("razon de viaje: Vacaciones al sur, Punta Arenas")
    costobus <- 56*5000+4000
    print(costobus)
  }else if(transporte == "avion"){
    #calculo para avion
    print("Medio de transporte: Avion")
    print("razon de viaje: Trabajo al sur, Punta Arenas")
    costoavion <- 35*(56*5000+4000)
    print(costoavion)
  }
  
}


##EJERCICIO 2

#Manzana. 350 gramos a $400 
#Peras- 450 gramos a $450
#Garbanzos- 600 gramos a $450
#Lentejas- 600 gramos a $500
#Paltas- 1 kilogramos $1.500

#descuento de 10% a 40% aleatorio EFECTIVO
#descuento de 1% a 10% aleatorio CREDITO
#otra forma de pago 3% fijo

#Productos por kilos que se quieran comprar:

manzana <- 3
peras <- 3
garbanzos <- 5
lentejas <- 1
paltas <- 3

#Precio de productos por kilos:

preciomanzana <- (manzana/0.35)*400
print(preciomanzana)
precioperas <- (peras/0.45)*450
print(precioperas)
preciogarbanzos <- (garbanzos/0.6)*450
print(preciogarbanzos)
preciolentejas <- (lentejas/0.6)*500
print(preciolentejas)
preciopaltas <- paltas*1500
print(preciopaltas)

total <- preciomanzana+precioperas+preciogarbanzos+preciolentejas+preciopaltas
print(total)

lista <- list("manzana","peras","garbanzos","lentejas","paltas")
lista


metododepago <- "efectivo"

if(lista=="manzana" || lista=="peras" || lista=="garbanzos" || lista=="lentejas" || lista=="paltas"){
 if(metododepago == "efectivo"){
  #acciones cuando se paga en efectivo
  print("Metodo de pago: efectivo")
  efectivo <- print(sample(10:40,1,replace=TRUE))
  nuevoefectivo <- print(efectivo*0.01) 
  pagoefectivo <- total-(total*nuevoefectivo)
  print(paste("Resultado: El pago final es",pagoefectivo,sep=" "))
} else if(metododepago == "credito"){
  #acciones cuando se paga en credito
  print("Metodo de pago: credito")
  credito <- print(sample(1:10,1,replace=TRUE))
  nuevocredito <- print(credito*0.01)
  pagocredito <- total+(total*nuevocredito)
  print(paste("Resultado: El pago final es",pagocredito,sep=" "))
} else if(metododepago=="otromedio"){
  #acciones cuando se paga con otro medio
  print("Metodo de pago: otro")
  otropago <- total-(total*0.03)
  print(paste("Resultado: El pago final es:",otropago,sep=" "))
} 
}else{
  print("No se encuentra información acerca del producto")
}

