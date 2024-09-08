sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/alunosbycursos/test/integration/FirstJourney',
		'treinamento/alunosbycursos/test/integration/pages/EstudantesByCursosList',
		'treinamento/alunosbycursos/test/integration/pages/EstudantesByCursosObjectPage'
    ],
    function(JourneyRunner, opaJourney, EstudantesByCursosList, EstudantesByCursosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/alunosbycursos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEstudantesByCursosList: EstudantesByCursosList,
					onTheEstudantesByCursosObjectPage: EstudantesByCursosObjectPage
                }
            },
            opaJourney.run
        );
    }
);