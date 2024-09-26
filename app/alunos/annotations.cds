using AdminService as service from '../../srv/service';
annotate service.Estudantes with 
@(UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : Nome,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'Correo',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Data Aniversario',
                Value : DtAniversario,
            },
            {
                $Type : 'UI.DataField',
                Value : curso_ID,
                Label : '{i18n>Curso}',
            },
            {
                $Type : 'UI.DataField',
                Value : Telefone,
                Label : 'Telefone',
            },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : 'Status',
                Criticality : critico,
            },
            {
                $Type : 'UI.DataField',
                Value : critico,
                Label : 'critico',
            },
            {
                $Type : 'UI.DataField',
                Value : observacao,
                Label : 'observacao',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Detalhes dos Alunos',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Nome',
            Value : Nome,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DtAniversario',
            Value : DtAniversario,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'AdminService.notificaAluno',
            Label : 'Notificar Aluno',
            Criticality: #Positive,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Nome,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'AdminService.inativaAluno',
            Label : 'Inativar Aluno', 
            ![@UI.Hidden] : {$edmJson: {$If: [
                {$Eq: [
                    {$Path: 'IsActiveEntity'},
                    false // IsActiveEntity=false means you are in edit mode
                ]},
                true, // If in edit mode, set to hidden
                false
            ]}}
        },
    ],
);

annotate service.Estudantes with {
    curso @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cursos',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : curso_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Nome',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'MaxEstudadntes',
                },
            ],
            Label : 'Curso',
        },
        Common.Text : curso.Nome,
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Cursos with {
    Nome @(UI.MultiLineText : false,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cursos',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Nome,
                    ValueListProperty : 'Nome',
                },
            ],
            Label : 'Curso',
        },
        Common.ValueListWithFixedValues : true,
)};
annotate service.Estudantes with {
    observacao @(
        UI.MultiLineText : true,
        Common.FieldControl : #ReadOnly,
    )
};

annotate service.Estudantes with {
    critico @Common.FieldControl : #ReadOnly
};

