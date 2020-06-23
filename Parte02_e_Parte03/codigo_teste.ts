addLibs{BibliotecaX} from '../libs/BibliotecaX';
addLibs{BibliotecaY} from '../libs/BibliotecaY';
addLibs{BibliotecaZ} from '../libs/BibliotecaZ';

$using biblioteca.math;

class CodigoTest { //Componente principal
    var result;
    var idadeY = 5;
    var idadeX = 10;
    var q,w,r;
    $const tam = 15;
    
    var.replace();
    convertePontoVirgula(n);

    try {
        p();
        InArray(lista, item)
        ifTern(result, idadeY, idadeX)
    } catch(err) {
        console.log(err);
    }

    const p = async() => {
       await promessa;
    }
    
    idadeY.indexOf('.');
    
    isNullUndefinedEmpty(a:any);

    funcao1 (a, b?) { 
        switch(a){
            case 1: console.log('OK'); break;
            case 2: console.log('OK'); break;
            case 3: console.log('OK'); break;
            case 4: console.log('OK'); break;
            default: console.log('Nao OK');
        }
    };

    exemploPromisse() {
        new Promisse((resolve, reject) => {
            console.log(`inicio`);

            resolve();
        }).then(()=>{
            throw new Error('caso algo falhe');
        }).catch(()=> {
            console.log('se tem falha faca isso')
        })
    }
    
    funcao2 (a, b) { 
        q = w + r;
        for(var i = 0; i < q; i++){
            console.log('Numero: ' + i);
        }
    };

    funcao3(){
        if(idadeX > idadeY){
            return true;
        }
        else{
            return false;
        }
    };  
}

// - Permitir Declaração de Bibliotecas - OK
// - Permitir Declaração de Variáveis - OK
// - Permitir Declaração de Constantes - OK
// - Permitir Declaração de Funções completas (permitindo parâmetros permitindo retorno de valores, podendo não os ter). OK
// - Definição dos Operadores de Atribuição, Lógico, Relacionais e Aritméticos. OK
// - Definição de expressões das mais variadas OK
// - Atribuição OK
// - Entrada de Dados via teclado somente OK
// - Saída de Dados somente para o monitor OK
// - Comandos de Seleção (pelo menos 1) OK
// - Comandos de Repetição (pelo menos 1)OK
