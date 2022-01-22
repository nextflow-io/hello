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
channel.of('ciao World','Hello World','Hola World') | sayHello | view
}
