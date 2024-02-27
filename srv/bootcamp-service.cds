using capm_poc_bootcamp as bootcampservice from '../db/data-model';

service BootCampService {

 entity Students @(Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable
    },
    UpdateRestrictions : {
        $Type : 'Capabilities.UpdateRestrictionsType',
        Updatable
    },
    DeleteRestrictions : {
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable
    },
  })
 as projection on bootcampservice.Students;

 annotate Students with @odata.draft.enabled;
 entity Courses as projection on bootcampservice.Courses;
 annotate Courses with @odata.draft.enabled;
}

