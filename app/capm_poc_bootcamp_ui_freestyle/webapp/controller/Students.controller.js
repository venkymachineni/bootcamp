sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("capmpocbootcampuifreestyle.controller.Students", {
            onInit: function () {
                this._oTable = this.byId("idStudentsTable");
            },
            openCreateDialog: function() {
                // create dialog lazily
                if(  !this.pDialog) {
                    this.pDialog = this.loadFragment({
                        name: "capmpocbootcampuifreestyle.fragments.createDialog"
                    });
                
                    this.pDialog.then((oDialog) => oDialog.open());
                }
               
            },
            onCreate: function() {
                var that = this;
                // var oSo = this.getView().byId("idSo").getValue();
                // if (oSo !== "") {
                    const oList = this._oTable;
                        const oBinding = oList.getBinding("items");
                        const oContext = oBinding.create({
                            "firstname": this.byId("idfname").getValue(),
                            "lastname": this.byId("idLName").getValue(),
                            "email": this.byId("idEmail").getValue(),
                            "mobile": parseInt(this.byId("idMobileno").getValue()),
                            "IsActiveEntity": true
                        }, true);
                        oContext.created()
                        .then(()=>{
                               
                                that.pDialog.then((oDialog) => oDialog.close());
                        });
  
                // }else {
                //     MessageToast.show("So cannot be blank");
                // }
    
            },
            onCancelDialog: function (oEvent) {
                oEvent.getSource().getParent().close();
             },
        });
    });
