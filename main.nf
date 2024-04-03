#!/usr/bin/env nextflow

params.example_key = 'Hello'

process sayHello {
    input: 
        val x
    
    output:
        stdout

    script:
        """
        echo '${x} world!'
        """
}

workflow {
    Channel.of(params.example_key) | sayHello | view
}
