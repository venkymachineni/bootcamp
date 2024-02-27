using capm_poc_bootcamp as bootcampservice from '../db/data-model';

service BootCampService {

 entity Students as projection on bootcampservice.Students;
 entity Courses as projection on bootcampservice.Courses;
};