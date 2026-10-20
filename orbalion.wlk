class Equipo {
  const nombre
  const nivelDeEnergiaBase
  const entrenador
  const tecnologiasComplementarias = #{}
  
  method tecnologiasComplementarias() = tecnologiasComplementarias
  
  method nombre() = nombre
  
  method nivelDeEnergiaBase() = nivelDeEnergiaBase
  
  method entrenador() = entrenador
  
  method energiaTotalCalculada() = nivelDeEnergiaBase + tecnologiasComplementarias.filter(
    { t => t.activa() }
  ).sum({ t => t.valorEnergetico() })
}

class Luminico inherits Equipo {
  const nivelDeRadiacionCapturada
  const cristalesSolares = #{}
  
  override method energiaTotalCalculada() {
    if (nivelDeRadiacionCapturada < 5000) {
      return super() * 1.1
    } else {
      return super()
    }
  }
  
  method cristalesSolares() = cristalesSolares
  
  method nivelDeRadiacionCapturada() = nivelDeRadiacionCapturada
}

class Sintetico inherits Equipo {
  const nivelDeProcesamientoCentral
  const cantDeModulosActivos
  const estanVerificadosComoUnidadEstableDeCompeticion
  
  method nivelDeProcesamientoCentral() = nivelDeProcesamientoCentral
  
  method cantDeModulosActivos() = cantDeModulosActivos
  
  method estanVerificadosComoUnidadEstableDeCompeticion() = estanVerificadosComoUnidadEstableDeCompeticion
  
  override method energiaTotalCalculada() {
    if (cantDeModulosActivos > 5) {
      return super() * 0.8
    } else {
      return super()
    }
  }
}

class Eterico inherits Equipo {
  const nivelDeFluctuacion
  const cantDePortalesEnergeticosAbiertos
  
  method nivelDeFluctuacion() = nivelDeFluctuacion
  
  method cantDePortalesEnergeticosAbiertos() = cantDePortalesEnergeticosAbiertos
}

class Entrenador {
  const edad
  const estaEnSintoniaConEquipo
  const nivelDePrecisionEstrategica
  const rolesHomologados = #{
    "estrategaCuantico",
    "arquitectoDeEnergia",
    "guiaMental"
  }
  var rol = "sinRol"
  
  method edad() = edad
  
  method estaEnSintoniaConEquipo() = estaEnSintoniaConEquipo
  
  method nivelDePrecisionEstrategica() = nivelDePrecisionEstrategica
  
  method rol() = rol
  
  method rolesHomologados() = rolesHomologados
  
  method asignarRol(rolAsignado) {
    if (!self.rolesHomologados().contains(rolAsignado)) {
      self.error("Rol no homologado por la FOZ")
    } else {
      rol = rolAsignado
    }
  }
}

class TecnologiaEspecial {
  const nombre
  const valorEnergetico
  const activa
  
  method nombre() = nombre
  
  method valorEnergetico() = valorEnergetico
  
  method activa() = activa
}