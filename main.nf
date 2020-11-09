#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    sleep 1800
    echo '$x world!'
    """
}

