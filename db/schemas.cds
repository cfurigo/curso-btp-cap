namespace treinamento;

using { managed, cuid } from '@sap/cds/common';
using { Attachments } from '@cap-js/attachments';

//aspect cuid { key ID : UUID; }
entity Alunos : cuid, managed {
    key ID : UUID;
    Nome   : String @mandatory 
                    @assert.format: '[a-zA-Z]+ [a-zA-Z]';
    DtAniversario : Date @mandatory;
    Telefone : String @assert.format: '[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]';
    email : String @assert.format: '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]';
    status : String(1)  @assert.range  enum { A; I; P; };
    critico: Integer;
    observacao: String;
    curso : Association to Cursos;
    attachments: Composition of many Attachments;
}

//aspect cuid { key ID : UUID; }
entity Cursos : cuid, managed {
    key ID : UUID;
    Nome : String @mandatory;
    MaxEstudadntes : Integer @mandatory 
                             @assert.range: [0, 30];
    estudantes : Association to many Alunos on estudantes.curso = $self;
}