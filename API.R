#*@apiTitle Exam IZA
#*@apiDescription swager de plumber que tendré que hacer para aprobar el examen

#*@param En Resistencia mínima requerida
#*@param St Fuerza mínima requerida
#*@param Po Potencia mínima requerida
#*@param Sp Velocidad mínima requerida
#*@param Ag Agilidad mínima requerida
#*@param Fl Flexibilidad mínima requerida
#* @param Ne Capacidad de contentracion minima requerida
#* @param Du Aguante minima requerida
#* @param Ha Coordinacion ojo mano minima requerida
#* @param An Capacidad analistica minima requerida
#* @get  /consulta_deporte
consulta_deporte<-function(En, St, Po, Sp, Ag, Fl, Ne, Du, Ha, An){
  df<-read.csv("toughestsport.csv")
  deportes<-df%>%filter(Endurance>En, Strength>St, Power>Po,Speed>Sp, Agility>Ag, Flexibility>Fl, Nerve>Ne, Durability>Du,Hand.eye.coordination>Ha, Analytical.Aptitude>An )%>%
    select(SPORT)
  return(deportes)
}