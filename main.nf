nextflow.enable.dsl=2
params.foo = 'Hello'
params.bar = 'world!'

def sayHello() {
    println "$params.foo $params.bar"
}
