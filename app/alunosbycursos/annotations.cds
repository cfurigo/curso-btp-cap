using EstudantesService as service from '../../srv/service';
annotate service.EstudantesByCursos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Nome',
                Value : Nome,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NomeEstudante',
                Value : NomeEstudante,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DataAniversario',
                Value : DataAniversario,
            },
            {
                $Type : 'UI.DataField',
                Value : Email,
                Label : 'Email',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
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
            Label : 'NomeEstudante',
            Value : NomeEstudante,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DataAniversario',
            Value : DataAniversario,
        },
    ],
);

