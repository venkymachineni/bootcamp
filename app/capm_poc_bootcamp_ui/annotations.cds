using BootCampService as service from '../../srv/bootcamp-service';

annotate service.Students with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : firstname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastName',
            Value : lastname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile no',
            Value : mobile,
        }
    ],
    UI:{
        SelectionFields  : [ 
            email
        ],

    }
    

);
annotate service.Students with {
    course @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Courses',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : course_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'startDate',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'endDate',
            },
        ],
    }
};
annotate service.Students with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : firstname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : lastname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mobile',
                Value : mobile,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ],
    
);

