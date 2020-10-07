#!/usr/bin/env nextflow


// The setProperty command shows how we can access the key-value pair passed as a JVM system property via the -D option.

/*
$ nextflow -Dkey=value run main.nf
value
... executor >  local (3) ...
*/

println(System.setProperty("key", "RL"));


cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}

