using { cuid,managed,Currency } from '@sap/cds/common';
namespace capm_poc_bootcamp;

entity Students: cuid, managed {

  firstname    : localized String(111)  ;
  lastname    : localized String(1111);
  email    : localized String(1111);
  mobile    : Integer;
  course   : Association to one Courses ;
  // price    : Decimal;
  // currency : Currency;
}

entity Courses: cuid,managed {
  name         : String(111);
  description : String(111);
  startDate  : Date;
  endDate  : Date;
  students        : Association to many Students on students.course = $self;
}