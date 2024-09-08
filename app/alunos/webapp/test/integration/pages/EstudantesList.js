sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'treinamento.alunos',
            componentId: 'EstudantesList',
            contextPath: '/Estudantes'
        },
        CustomPageDefinitions
    );
});