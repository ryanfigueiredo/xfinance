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
    if(hidden) {
      this.clearValuesFormFinanceTransaction()
    }else {
      this.setAttributesFormFinanceTransaction()
    }
    this.toggleFormFinanceTransaction(hidden)
  }

  toggleFilterAddTableFinanceTransactionsEdit({ params: { id, title, realAmount, kind, purchaseDate, installments, payersFinanceTransactionId, payerId, tagsFinanceTransactionId, tagId, hidden } }) {
    this.toggleFormFinanceTransaction(hidden)

    let financeTransactionTitle = document.querySelector('#finance_transaction_title')
    let financeTransactionAmount = document.querySelector('#finance_transaction_real_amount')
    let financeTransactionKind = document.querySelector('#finance_transaction_kind')
    let financeTransactionPurchaseDate = document.querySelector('#finance_transaction_purchase_date')
    let financeTransactionInstallments = document.querySelector('#finance_transaction_installments')
    let financeTransactionPayerId = document.querySelector('#finance_transaction_payers_finance_transactions_attributes_0_payer_id')
    let financeTransactionTagId = document.querySelector('#finance_transaction_tags_finance_transactions_attributes_0_tag_id')
    let financeTransactionPayersFinanceTransactionId = document.querySelector('#finance_transaction_payers_finance_transactions_attributes_0_id')
    let financeTransactionTagsFinanceTransactionId = document.querySelector('#finance_transaction_tags_finance_transactions_attributes_0_id')

    financeTransactionTitle.value = title
    financeTransactionAmount.value = realAmount
    financeTransactionKind.value = kind
    financeTransactionPurchaseDate.value = purchaseDate
    financeTransactionInstallments.value = installments.split('/')[1]
    financeTransactionPayersFinanceTransactionId.value = payersFinanceTransactionId
    financeTransactionPayerId.value = payerId
    financeTransactionTagsFinanceTransactionId.value = tagsFinanceTransactionId
    financeTransactionTagId.value = tagId
    this.setAttributesFormFinanceTransaction(id)
  }

  toggleFormFinanceTransaction(hidden) {
    let formTransactionFieldsHidden = document.querySelectorAll('.fields-form-add-finance-transaction')
    let fieldFilter = document.querySelectorAll('.field-filter')

    for (let i = 0; i < formTransactionFieldsHidden.length; i++) {
      formTransactionFieldsHidden[i].hidden = hidden
    }

    for (let i = 0; i < fieldFilter.length; i++) {
      fieldFilter[i].hidden = !hidden
    }
  }

  clearValuesFormFinanceTransaction() {
    document.querySelectorAll('.field-finance-transaction').forEach(el => {
      if (el.type == 'select-one') {
        let defaultValue = el.options[0].value
        el.value = defaultValue
      }else {
        el.value = ''
      }
    })
  }

  setAttributesFormFinanceTransaction(financeTransactionId) {
    let formFinanceTransaction = document.querySelector('#form-finance-transaction')
    let actionFormFinanceTransaction = formFinanceTransaction.getAttribute('action')

    if (financeTransactionId) {
      formFinanceTransaction.method = 'put'
      this.setActionFormFinanceTransaction(financeTransactionId, actionFormFinanceTransaction, formFinanceTransaction)
    } else {
      formFinanceTransaction.method = 'post'
      formFinanceTransaction.setAttribute('action', '/finance_transactions')
    }
  }

  setActionFormFinanceTransaction(financeTransactionId, actionFormFinanceTransaction, formFinanceTransaction) {
    let actionFormFinanceTransactionSplitted = actionFormFinanceTransaction.split('/')

    if(actionFormFinanceTransactionSplitted.length > 2 ) {
      actionFormFinanceTransactionSplitted.pop()
      actionFormFinanceTransactionSplitted.push(financeTransactionId)

      formFinanceTransaction.setAttribute('action', actionFormFinanceTransactionSplitted.join('/'))
    } else {
      formFinanceTransaction.setAttribute('action', `${actionFormFinanceTransaction}/${financeTransactionId}`)
    }
  }
}
