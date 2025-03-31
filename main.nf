#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  // Si params.greetings no está definido, usa valores por defecto
  def greetings = params.greetings ?: ['Bonjour', 'Ciao', 'Hello', 'Hola']
  
  // Crear un canal con los saludos y ejecutarlo en el proceso
  Channel.from(greetings) | sayHello | view
}
