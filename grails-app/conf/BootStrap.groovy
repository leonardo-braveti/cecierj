
import cecierjsuporte.Unidade
import cecierjsuporte.Universidade
import cecierjsuporte.Usuario

import cecierjsuporte.Curso
import cecierjsuporte.Localidade
import cecierjsuporte.Perfil
import cecierjsuporte.Prioridade
import cecierjsuporte.Problema
import cecierjsuporte.Setor
import cecierjsuporte.Status

class BootStrap {

    def init = { servletContext ->
        
        // criando objetos de unidade
        
        if(!Unidade.count()){
              new Unidade(nome: "SEDE").save(failOnError: true)
              new Unidade(nome: "MANGUEIRA").save(failOnError: true)
              new Unidade(nome: "MUSEU").save(failOnError: true)
              new Unidade(nome: "GRÁFICA").save(failOnError: true)
              new Unidade(nome: "CEDERJ").save(failOnError: true)
              new Unidade(nome: "CEJA").save(failOnError: true)
              new Unidade(nome: "TUTORIA").save(failOnError: true)              
        }
        
        if(!Prioridade.count()){
            new Prioridade(nome:"ALTA").save(failOnError:true)
            new Prioridade(nome:"BAIXA").save(failOnError:true)
            new Prioridade(nome:"MÉDIA").save(failOnError:true)
        }
        
        if(!Status.count()){
            new Status(nome:"ABERTO").save(failOnError:true)
            new Status(nome:"ANDAMENTO").save(failOnError:true)
            new Status(nome:"FINALIZADO").save(failOnError:true)
        }
        
        if(!Perfil.count()){
            new Perfil(nome:"Analista").save(failOnError:true)
            new Perfil(nome:"Técnico").save(failOnError:true)
            new Perfil(nome:"Usuário").save(failOnError:true)
        }
        
        if(!Problema.count()){
            new Problema(nome:"Sistema operacional").save(failOnError:true)
            new Problema(nome:"Rede").save(failOnError:true)
            new Problema(nome:"Impressora").save(failOnError:true)
            new Problema(nome:"Instalação de software").save(failOnError:true)
            new Problema(nome:"Troca de peça").save(failOnError:true)
            new Problema(nome:"Compartilhamento de arquivos e sistemas").save(failOnError:true)
            new Problema(nome:"Antivírus").save(failOnError:true)
            new Problema(nome:"Hardware").save(failOnError:true)
        }
        
        if(!Setor.count()){
            new Setor(nome:"Departamento de Suporte Técnico em Informática").save(failOnError:true)
            new Setor(nome:"Departamento de Redes").save(failOnError:true)
            new Setor(nome:"Departamento de Desenvolvimento de Software").save(failOnError:true)            	
        }
        
        if(!Universidade.count()){
            new Universidade(nome:"UERJ").save(failOnError:true)
            new Universidade(nome:"UFF").save(failOnError:true)
            new Universidade(nome:"UFRJ").save(failOnError:true)
            new Universidade(nome:"UFRRJ").save(failOnError:true)
            new Universidade(nome:"UNIRIO").save(failOnError:true)
        }
        
        if(!Curso.count()){
            new Curso(nome:"Administração").save(failOnError:true)
            new Curso(nome:"Biofísica").save(failOnError:true)
            new Curso(nome:"Biologia").save(failOnError:true)
            new Curso(nome:"Computação").save(failOnError:true)
            new Curso(nome:"Física").save(failOnError:true)
            new Curso(nome:"Matemática").save(failOnError:true)
            new Curso(nome:"Pedagogia").save(failOnError:true)
            new Curso(nome:"Quimica").save(failOnError:true)
        }
        
        if(!Localidade.count()){
            new Localidade(nome:"Alemão").save(failOnError:true)
            new Localidade(nome:"Angra dos Reis").save(failOnError:true)
            new Localidade(nome:"Aperibé").save(failOnError:true)
            new Localidade(nome:"Araruama").save(failOnError:true)
            new Localidade(nome:"Areal").save(failOnError:true)
            new Localidade(nome:"Armação de Búzios").save(failOnError:true)
            new Localidade(nome:"Arraial do Cabo").save(failOnError:true)
            new Localidade(nome:"Barra do Piraí").save(failOnError:true)
            new Localidade(nome:"Barra Mansa").save(failOnError:true)
            new Localidade(nome:"Belford Roxo").save(failOnError:true)
            new Localidade(nome:"Bom Jardim").save(failOnError:true)
            new Localidade(nome:"Bom Jesus do Itabapoana").save(failOnError:true)
            new Localidade(nome:"Cabo Frio").save(failOnError:true)
            new Localidade(nome:"Cachoeiras de Macacu").save(failOnError:true)
            new Localidade(nome:"Cambuci").save(failOnError:true)
            new Localidade(nome:"Campos dos Goytacazes").save(failOnError:true)
            new Localidade(nome:"Cantagalo").save(failOnError:true)
            new Localidade(nome:"Carapebus").save(failOnError:true)
            new Localidade(nome:"Cardoso Moreira").save(failOnError:true)
            new Localidade(nome:"Carmo").save(failOnError:true)
            new Localidade(nome:"Casimiro de Abreu").save(failOnError:true)
            new Localidade(nome:"Comendador Levy Gasparian").save(failOnError:true)
            new Localidade(nome:"Conceição de Macabu").save(failOnError:true)
            new Localidade(nome:"Cordeiro").save(failOnError:true)
            new Localidade(nome:"Duas Barras").save(failOnError:true)
            new Localidade(nome:"Duque de Caxias").save(failOnError:true)
            new Localidade(nome:"Engenheiro Paulo de Frontin").save(failOnError:true)
            new Localidade(nome:"Guapimirim").save(failOnError:true)
            new Localidade(nome:"Iguaba Grande").save(failOnError:true)
            new Localidade(nome:"Itaboraí").save(failOnError:true)
            new Localidade(nome:"Itaguaí").save(failOnError:true)
            new Localidade(nome:"Italva").save(failOnError:true)
            new Localidade(nome:"Itaocara").save(failOnError:true)
            new Localidade(nome:"Itaperuna").save(failOnError:true)
            new Localidade(nome:"Itatiaia").save(failOnError:true)
            new Localidade(nome:"Japeri").save(failOnError:true)
            new Localidade(nome:"Laje do Muriaé").save(failOnError:true)
            new Localidade(nome:"Macaé").save(failOnError:true)
            new Localidade(nome:"Macuco").save(failOnError:true)
            new Localidade(nome:"Madureira").save(failOnError:true)
            new Localidade(nome:"Magé").save(failOnError:true)
            new Localidade(nome:"Mangaratiba").save(failOnError:true)
            new Localidade(nome:"Maricá").save(failOnError:true)
            new Localidade(nome:"Mendes").save(failOnError:true)
            new Localidade(nome:"Mesquita").save(failOnError:true)
            new Localidade(nome:"Miguel Pereira").save(failOnError:true)
            new Localidade(nome:"Miracema").save(failOnError:true)
            new Localidade(nome:"Natividade").save(failOnError:true)
            new Localidade(nome:"Nilópolis").save(failOnError:true)
            new Localidade(nome:"Niterói").save(failOnError:true)
            new Localidade(nome:"Nova Friburgo").save(failOnError:true)
            new Localidade(nome:"Nova Iguaçu").save(failOnError:true)
            new Localidade(nome:"Paracambi").save(failOnError:true)
            new Localidade(nome:"Paraíba do Sul").save(failOnError:true)
            new Localidade(nome:"Paraty").save(failOnError:true)
            new Localidade(nome:"Paty do Alferes").save(failOnError:true)
            new Localidade(nome:"Petrópolis").save(failOnError:true)
            new Localidade(nome:"Pinheiral").save(failOnError:true)
            new Localidade(nome:"Piraí").save(failOnError:true)
            new Localidade(nome:"Porciúncula").save(failOnError:true)
            new Localidade(nome:"Porto Real").save(failOnError:true)
            new Localidade(nome:"Quatis").save(failOnError:true)
            new Localidade(nome:"Queimados").save(failOnError:true)
            new Localidade(nome:"Quissamã").save(failOnError:true)
            new Localidade(nome:"Resende").save(failOnError:true)
            new Localidade(nome:"Rio Bonito").save(failOnError:true)
            new Localidade(nome:"Rio Claro").save(failOnError:true)
            new Localidade(nome:"Rio das Flores").save(failOnError:true)
            new Localidade(nome:"Rio das Ostras").save(failOnError:true)
            new Localidade(nome:"Rio de Janeiro").save(failOnError:true)
            new Localidade(nome:"Rocinha").save(failOnError:true)
            new Localidade(nome:"Santa Maria Madalena").save(failOnError:true)
            new Localidade(nome:"Santo Antônio de Pádua").save(failOnError:true)
            new Localidade(nome:"São Fidélis").save(failOnError:true)
            new Localidade(nome:"São Francisco de Itabapoana").save(failOnError:true)
            new Localidade(nome:"São Gonçalo").save(failOnError:true)
            new Localidade(nome:"São João da Barra").save(failOnError:true)
            new Localidade(nome:"São João de Meriti").save(failOnError:true)
            new Localidade(nome:"São José de Ubá").save(failOnError:true)
            new Localidade(nome:"São José do Vale do Rio Preto").save(failOnError:true)
            new Localidade(nome:"São Pedro da Aldeia").save(failOnError:true)
            new Localidade(nome:"São Sebastião do Alto").save(failOnError:true)
            new Localidade(nome:"Sapucaia").save(failOnError:true)
            new Localidade(nome:"Saquarema").save(failOnError:true)
            new Localidade(nome:"Seropédica").save(failOnError:true)
            new Localidade(nome:"Silva Jardim").save(failOnError:true)
            new Localidade(nome:"Sumidouro").save(failOnError:true)
            new Localidade(nome:"Tanguá").save(failOnError:true)
            new Localidade(nome:"Teresópolis").save(failOnError:true)
            new Localidade(nome:"Trajano de Moraes").save(failOnError:true)
            new Localidade(nome:"Três Rios").save(failOnError:true)
            new Localidade(nome:"Valença").save(failOnError:true)
            new Localidade(nome:"Varre-Sai").save(failOnError:true)
            new Localidade(nome:"Vassouras").save(failOnError:true)
            new Localidade(nome:"Volta Redonda").save(failOnError:true)
        }
        
        if(!Usuario.count()){
            new Usuario(nome:"Leonardo de Paula Rosa Pereira",
                        email:"lpereira@cecierj.edu.br",
                        localidade: "Rio de Janeiro",
                        unidade: "SEDE",
                        perfil: "Analista",
                        senha: "leon",
                        setor: "Departamento de Suporte Técnico em Informática",
                        celular: "(21) 97618-8370",
                        telefone: "(21) 3015-8093"
            ).save(failOnError:true)
            
            new Usuario(nome:"Isabella dos Santos Soares Pereira",
                        email:"ipereira@cecierj.edu.br",
                        localidade: "Rio de Janeiro",
                        unidade: "SEDE",
                        perfil: "Usuário",
                        senha: "isa",
                        setor: "Departamento de Suporte Técnico em Informática",
                        celular: "(21) 97618-8370",
                        telefone: "(21) 2333-1103"
            ).save(failOnError:true)
        }

        
                
    }
    def destroy = {
    }
}

