import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  filterTableFinanceTransactions() {
    var input, filter, table, tr, td, i, txtValue
    input = document.getElementById("filter-title")
    filter = input.value.toUpperCase()
    table = document.getElementById("table-finance-transactions")
    tr = table.getElementsByTagName("tr")
  
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }
  
  toggleFilterAddTableFinanceTransactions({ params: { hidden } }) {
    let formTransactionFieldsHidden = document.querySelectorAll('.fields-form-add-finance-transaction')
    let fieldFilter = document.querySelectorAll('.field-filter')
  
    for (let i = 0; i < formTransactionFieldsHidden.length; i++) {
      formTransactionFieldsHidden[i].hidden = hidden
    }
  
    for (let i = 0; i < fieldFilter.length; i++) {
      fieldFilter[i].hidden = !hidden
    }
  }
}