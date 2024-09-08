sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'treinamento/cursos/test/integration/FirstJourney',
		'treinamento/cursos/test/integration/pages/CursosList',
		'treinamento/cursos/test/integration/pages/CursosObjectPage',
		'treinamento/cursos/test/integration/pages/EstudantesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CursosList, CursosObjectPage, EstudantesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('treinamento/cursos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCursosList: CursosList,
					onTheCursosObjectPage: CursosObjectPage,
					onTheEstudantesObjectPage: EstudantesObjectPage
                }
            },
            opaJourney.run
        );
    }
);