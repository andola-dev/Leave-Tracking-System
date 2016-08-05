# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
        $('#leave_tbl').dataTable
          "order": [[ 1, "desc" ]]
          sPaginationType: "full_numbers"
          bJQueryUI: true
          bProcessing: true
          aoColumnDefs: [
            bSortable: false
            aTargets: [2, 4, 5, 6]
          ]
