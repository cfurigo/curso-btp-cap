using AdminService as service from '../../srv/service';
annotate service.Cursos with @(
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
                Label : 'MaxEstudadntes',
                Value : MaxEstudadntes,
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
            Label : 'MaxEstudadntes',
            Value : MaxEstudadntes,
        },
    ],
);

annotate service.Cursos with {
    //ID @Common.Text : Nome
    ID @Core.Computed
};