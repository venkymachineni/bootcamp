sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capmpocbootcampui/test/integration/FirstJourney',
		'capmpocbootcampui/test/integration/pages/StudentsList',
		'capmpocbootcampui/test/integration/pages/StudentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentsList, StudentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capmpocbootcampui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentsList: StudentsList,
					onTheStudentsObjectPage: StudentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);