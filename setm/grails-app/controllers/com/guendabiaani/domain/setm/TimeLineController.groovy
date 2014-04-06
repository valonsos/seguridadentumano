package com.guendabiaani.domain.setm

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException
import com.guendabiaani.utils.*

class TimeLineController {

	
	def lineaDelTiempo(){


				def personas =PersonaExtraviada.list()

				def tiempo = new LineaExt()

				def linea= new TimeLine()

				linea.headline="Línea del tiempo de personas extraviadas"
				linea.startDate="1988"
				linea.text="<p>Una manera de visualizar a los que nos hacen falta</p>"
				linea.type="default"
				linea.asset = new Asset()
				linea.asset.media="http://2.bp.blogspot.com/-0qEuI9ZxvUU/Us7aee1pVEI/AAAAAAAAANs/Sb-vkkChZQ8/s1600/mexicoMISSING-PEOPLE-MEXICO-large570.jpg"
        		linea.asset.credit=""
        		linea.asset.caption=""

				def fechas = new ArrayList<Date>()

				personas.each{

				def f1= new Date()
				f1.startDate=it.ultimaFechaVisto.format("yyyy,MM,dd")
			    f1.headline=it.nombre +" "+ it.apellidoP +" "+ it.apellidoM 
			    f1.text=it.ultimoLugarVisto+ "   "+it.vestimenta
			    f1.asset= new Asset()

			    f1.asset.media=it.gustosPreferencias
        		f1.asset.credit=""
        		f1.asset.caption=""
				fechas.add(f1)
				}
				
				linea.date=fechas
				tiempo.timeline=linea

				JSON.use('deep')
				
				render tiempo as JSON
	}

	def frametm(){


		
	}

}
