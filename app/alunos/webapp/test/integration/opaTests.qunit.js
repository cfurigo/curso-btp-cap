sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/alunos/test/integration/FirstJourney',
		'treinamento/alunos/test/integration/pages/EstudantesList',
		'treinamento/alunos/test/integration/pages/EstudantesObjectPage'
    ],
    function(JourneyRunner, opaJourney, EstudantesList, EstudantesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/alunos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEstudantesList: EstudantesList,
					onTheEstudantesObjectPage: EstudantesObjectPage
                }
            },
            opaJourney.run
        );
    }
);