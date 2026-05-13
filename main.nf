#!/usr/bin/env nextflow

process sayHello {
    input:
    val greeting

    output:
    stdout

    script:
    """
    echo '${greeting} world!'
    """
}

workflow {
    ch_greetings = channel.of('Bonjour', 'Ciao', 'Hello', 'Hola')
    sayHello(ch_greetings).view()
}
