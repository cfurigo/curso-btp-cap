sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        teste: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
