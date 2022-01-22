nextflow.enable.dsl=2

process sayHello {
input:
val cheers
output:
stdout

"""
echo $cheers
"""
}
workflow{
channel.of('ciao','Hello','Hola') | sayHello | view
}
