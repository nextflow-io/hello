nextflow.enable.dsl=2

process sayHello {
input:
val cheers
output:
stdout

"""
echo $cheers
"""
script:
    """
    echo '$world!'
    """
}
workflow{
channel.of('ciaoWorld','HelloWorld','HolaWorld') | sayHello | view
}
