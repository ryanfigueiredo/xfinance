initial_payers = [
  {
    "name": "Ryan"
  },
  {
    "name": "Luana"
  },
  {
    "name": "IA"
  },
  {
    "name": "Mae"
  },
  {
    "name": "Pai"
  }
]

initial_groups = [
  {
    "title": "Cartao de Credito Nubank Ryan",
    "payment_day": "10",
    "close_day": "26",
    "kind": "expense",
  },
  {
    "title": "Cartao de Credito Pic Pay",
    "payment_day": "10",
    "close_day": "25",
    "kind": "expense",
  },
  {
    "title": "Cartao de Credito Nubank Mamae",
    "payment_day": "10",
    "close_day": "27",
    "kind": "expense",
  },
  {
    "title": "Mensalidade Luana",
    "payment_day": "10",
    "close_day": "15",
    "kind": "revenue",
  },
  {
    "title": "Despesas",
    "payment_day": "10",
    "close_day": "15",
    "kind": "expense",
  },
  {
    "title": "Investimentos",
    "payment_day": "10",
    "close_day": "15",
    "kind": "expense",
  },
  {
    "title": "Receitas",
    "payment_day": "30",
    "close_day": "15",
    "kind": "revenue",
  }
]

# finance transactions January of 2024

finance_transactions_nubank_mamae = [ # dates OK
  {
    "title": "Madeira Cama",
    "purchase_date": "27-09-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "05/10",
    "real_amount": 210.53
  },
  {
    "title": "Notebook Dell",
    "purchase_date": "21-07-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "08/12",
    "real_amount": 708.44
  },
  {
    "title": "Normatel",
    "purchase_date": "29-12-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 86
  },
  {
    "title": "Normatel",
    "purchase_date": "30-12-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 46.51
  },
  {
    "title": "Duto cabelos",
    "purchase_date": "30-12-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 35
  },
  {
    "title": "first class",
    "purchase_date": "05-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 149.97
  },
  {
    "title": "first class",
    "purchase_date": "05-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 259.97
  },
  {
    "title": "Gs Riomar Carrinhos",
    "purchase_date": "05-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 65
  },
  {
    "title": "Ri happy",
    "purchase_date": "05-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 199.99
  },
  {
    "title": "Sam michel",
    "purchase_date": "06-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 249.98
  },
  {
    "title": "Leitura Riomar",
    "purchase_date": "07-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 65
  },
  {
    "title": "Blitz Intervencoes",
    "purchase_date": "07-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 43
  },
  {
    "title": "Sodine store",
    "purchase_date": "07-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 120.64
  },
  {
    "title": "ArteForm Comercio",
    "purchase_date": "07-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 129.9
  },
  {
    "title": "Filial Fortaleza",
    "purchase_date": "07-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 39.9
  },
  {
    "title": "A Libaneza",
    "purchase_date": "07-01-2024",
    "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 252.69
  },
  {
    "title": "Pag nildaMariaDaSilv",
    "purchase_date": "09-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 20
  },
  {
    "title": "Mini Cars",
    "purchase_date": "09-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 20
  },
  {
    "title": "Cd Max",
    "purchase_date": "11-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 154.4
  },
  {
    "title": "Estacionamento Iguate",
    "purchase_date": "14-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 10
  },
  {
    "title": "Pag SodineStore",
    "purchase_date": "11-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 458.93
  }
]

finance_transactions_nubank_ryan = [# dates OK
  {
   "title": "Herman Miller",
   "purchase_date": "27-12-2023",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": "2/12",
   "real_amount": 954.68
  },
  {
   "title": "Amazon",
   "purchase_date": "29-12-2023",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 47.29
  },
  {
   "title": "SmartFit",
   "purchase_date": "11-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 109.9
  },
  {
   "title": "Vivo Controle",
   "purchase_date": "15-01-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 54.99
  },
  {
   "title": "Pag Outgo",
   "purchase_date": "17-01-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 35
  }
]

finance_transactions_pic_pay = [# dates OK
  {
   "title": "Amazon Subwoofer",
   "purchase_date": "28-06-2023",
   "group": 'Cartao de Credito Pic Pay',
   "installments": "6/10",
   "real_amount": 265.10
  },
]

finance_transactions_despesas = [ #check after...
  {
   "title": "IPVA",
   "payment_date": "02-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 1982.09
  },
  {
   "title": "Colegio Maria Julia",
   "payment_date": "02-01-2024",
   "installments": '',
   "group": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 650
  },
  {
   "title": "Material Escolar Maria Julia",
   "payment_date": "03-01-2024",
   "installments": '',
   "group": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 590
  },
  {
   "title": "Wilson Dantas",
   "payment_date": "05-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Wilson Dantas",
   "payment_date": "05-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Raxa BNB",
   "payment_date": "09-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 20
  },
  {
   "title": "Grafica Point S Com",
   "payment_date": "11-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 26
  },
  {
   "title": "Raxa BNB Mensalidade",
   "payment_date": "15-01-2024",
   "installments": '',
   "group": 'Despesas',
   "real_amount": 60
  },
  # {
  #  "title": "XP investimentos",
  #  "payment_date": "02-01-2024",
  #  "installments": '',
  #  "group": 'Despesas',
  #  "real_amount": 1000
  # },
  # {
  #  "title": "Pagamento PicPay",
  #  "payment_date": "03-01-2024",
  #  "installments": '',
  #  "group": 'Despesas',
  #  "real_amount": 265.10
  # },
  # {
  #  "title": "Pagamento Cartao Nubank Mamae",
  #  "payment_date": "30-01-2024",
  #  "installments": '',
  #  "group": 'Despesas',
  #  "real_amount": 3325.85
  # },
]

acount_transactions_mensalidade_luana = [#check after
  {
    "kind": "revenue",
    "title": "Plano de saude",
    "payment_date": "16-02-2024",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 200
  },
  {
    "kind": "revenue",
    "title": "Alimentacao",
    "payment_date": "16-02-2024",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 150
  },
  {
    "kind": "revenue",
    "title": "Necesser",
    "payment_date": "16-02-2024",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 25
  },
  {
    "kind": "revenue",
    "title": "A parte",
    "payment_date": "16-02-2024",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 192
  },
]

finance_transactions_investimentos = [
  {
    "title": "Fundos imobiliarios",
    "payment_date": "02-01-2024",
    "installments": '',
    "group": 'Investimentos',
    "real_amount": 500
  },
  {
    "title": "Acoes",
    "payment_date": "02-01-2024",
    "installments": '',
    "group": 'Investimentos',
    "real_amount": 500
  }
]

finance_transactions_receitas = [
  {
    "kind": "revenue",
    "title": "Salario",
    "payment_date": "30-01-2024",
    "installments": '',
    "group": 'Receitas',
    "payers": "IA",
    "real_amount": 4313.17
  },
  {
    "kind": "revenue",
    "title": "Ressalva ppay",
    "payment_date": "02-02-2024",
    "installments": '',
    "group": 'Receitas',
    "payers": "Mae",
    "real_amount": 1500
  }
]

# finance transactions January of 2024

# finance transactions Febuary of 2024

finance_transactions_nubank_mamae_feb = [ # dates OK
  {
    "title": "Madeira Cama",
    "purchase_date": "27-09-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "05/10",
    "real_amount": 210.53
  },
  {
    "title": "Notebook Dell",
    "purchase_date": "21-07-2023",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "08/12",
    "real_amount": 708.44
  },
  {
    "title": "MP GuicheWeb Circo Americano",
    "purchase_date": "27-01-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "08/12",
    "real_amount": 160.50
  },
  {
    "title": "Amazon Prime Canais",
    "purchase_date": "12-02-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 29.90
  },
  {
    "title": "Silcar Veiculos Evaporadora",
    "purchase_date": "16-02-2024",
    "group": 'Cartao de Credito Nubank Mamae',
    "installments": "1/3",
    "real_amount": 280.64
  },
]

finance_transactions_nubank_ryan_feb = [# dates OK
  {
   "title": "Herman Miller",
   "purchase_date": "27-12-2023",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": "3/12",
   "real_amount": 954.68
  },
  {
   "title": "Mercado Livre Cabo Thunderbolt",
   "purchase_date": "01-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 179.99
  },
  {
   "title": "Fix Pay Bateria",
   "purchase_date": "01-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 440.00
  },

  {
   "title": "Amazon",
   "purchase_date": "05-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 42.90
  },
  {
   "title": "Uhuu Dzo Ingresso Renato Albani",
   "purchase_date": "08-02-2024",
   "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 144.00
  },
  {
   "title": "Pag Francisca Mao de Obra Val. Expansao",
   "purchase_date": "08-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 390.00
  },
  {
   "title": "T.R Maia Performance Sup - Mensalidade Jiu-Jistu MJ",
   "purchase_date": "09-02-2024",
   "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 150
  },
  {
   "title": "T.R Maia Performance Sup - Matricula Jiu-Jistu MJ",
   "purchase_date": "09-02-2024",
   "group": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 40
  },
  {
   "title": "Smart Fit",
   "purchase_date": "14-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 109.90
  },
  {
   "title": "Vivo Controle",
   "purchase_date": "15-02-2024",
   "group": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 54.99
  }
]

finance_transactions_pic_pay_feb = [# dates OK
  {
   "title": "Amazon Subwoofer",
   "purchase_date": "28-06-2023",
   "group": 'Cartao de Credito Pic Pay',
   "installments": "7/10",
   "real_amount": 265.10
  },
]

finance_transactions_despesas_feb = [ #check after...
  {
   "title": "Colegio Maria Julia",
   "payment_date": "02-01-2024",
   "installments": '',
   "group": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 700
  }
]

acount_transactions_mensalidade_luana_feb = [#check after
  {
    "kind": "revenue",
    "title": "Plano de saude",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 200
  },
  {
    "kind": "revenue",
    "title": "Alimentacao",
    "installments": '',
    "group": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 150
  },
  
]

finance_transactions_investimentos_feb = [
  {
    "title": "Fundos imobiliarios",
    "installments": '',
    "group": 'Investimentos',
    "real_amount": 500
  },
  {
    "title": "Acoes",
    "installments": '',
    "group": 'Investimentos',
    "real_amount": 500
  }
]

# finance transactions Febuary of 2024
                                    
def create_payers(payers)
  payers.each do |payer|
    payer_created = Payer.create!(
      name: payer[:name]
    )

    puts "Create payer: #{payer_created.attributes}"
  end
end

def create_groups(groups)
  groups.each do |group|
    # payer = Payer.find_by(name: group[:payer])

    group_created = Group.create!(
      title: group[:title],
      payment_day: group[:payment_day],
      close_day: group[:close_day],
      kind: group[:kind],
      # payer: payer
    )

    puts "Create group: #{group_created.attributes}"
  end
end

def create_finance_transactions_and_payers(finance_transactions, month)
  finance_transactions.each do |finance_transaction|
    if finance_transaction[:group].is_a?(Array)
      finance_transaction[:group].each_with_index do |group_name, index|
        group = Group.find_by(title: group_name)
        payers_name = finance_transaction[:payers].split(',')
        payer = Payer.find_by(name: payers_name[index])

        attributes = {
          title: finance_transaction[:title],
          installments: finance_transaction[:installments],
          real_amount: payer.name == 'Ryan' ? finance_transaction[:real_amount] : finance_transaction[:real_amount] / payers_name.size
        }

        attributes.merge!(purchase_date: finance_transaction[:purchase_date]) if finance_transaction[:purchase_date].present?
        attributes.merge!(payment_date: finance_transaction[:payment_date]) if finance_transaction[:payment_date].present?

        if finance_transaction[:kind].present?
          attributes.merge!(kind: finance_transaction[:kind])
        elsif payer.present? && payer.name != 'Ryan'
          attributes.merge!(kind: :revenue)
        end

        finance_transaction_created = FinanceTransaction.create!(attributes)

        puts "Create finance transaction: #{finance_transaction_created.attributes}"

        payer_finance_transaction_created = PayersFinanceTransaction.create!(
          finance_transaction: finance_transaction_created,
          payer: payer,
        )

        puts "Create payer finance transaction: #{payer_finance_transaction_created.attributes}"

        group_finance_transaction_created = GroupsFinanceTransaction.create!(
          finance_transaction: finance_transaction_created,
          group: group,
          month: month
        )

        puts "Create group finance transaction: #{group_finance_transaction_created.attributes}"
      end
    else
      group = Group.find_by(title: finance_transaction[:group])
      payer = finance_transaction[:payers].present? ? Payer.find_by(name: finance_transaction[:payers]) : Payer.find_by(name: 'Ryan')

      attributes = {
        title: finance_transaction[:title],
        installments: finance_transaction[:installments],
        real_amount: finance_transaction[:real_amount]
      }

      attributes.merge!(purchase_date: finance_transaction[:purchase_date]) if finance_transaction[:purchase_date].present?
      attributes.merge!(payment_date: finance_transaction[:payment_date]) if finance_transaction[:payment_date].present?

      if finance_transaction[:kind].present?
        attributes.merge!(kind: finance_transaction[:kind])
      elsif payer.present? && payer.name != 'Ryan'
        attributes.merge!(kind: :revenue)
      end

      finance_transaction_created = FinanceTransaction.create!(attributes)

      puts "Create finance transaction: #{finance_transaction_created.attributes}"

      payer_finance_transaction_created = PayersFinanceTransaction.create!(
        finance_transaction: finance_transaction_created,
        payer: payer,
      )

      puts "Create payer finance transaction: #{payer_finance_transaction_created.attributes}"

      group_finance_transaction_created = GroupsFinanceTransaction.create!(
          finance_transaction: finance_transaction_created,
          group: group,
          month: month
        )

        puts "Create group finance transaction: #{group_finance_transaction_created.attributes}"
    end
  end
end

puts "Creating initial payers..."

create_payers(initial_payers)

puts "Payers created"

puts "Creating initial groups..."

create_groups(initial_groups)

puts "Groups created"

puts "Creating finance transactions of January..."

create_finance_transactions_and_payers(finance_transactions_nubank_mamae, 'january')
create_finance_transactions_and_payers(finance_transactions_nubank_ryan, 'january')
create_finance_transactions_and_payers(finance_transactions_pic_pay, 'january')
create_finance_transactions_and_payers(finance_transactions_despesas, 'january')
create_finance_transactions_and_payers(acount_transactions_mensalidade_luana, 'january')
create_finance_transactions_and_payers(finance_transactions_investimentos, 'january')
create_finance_transactions_and_payers(finance_transactions_receitas, 'january')

puts "Finance transactions created January"

puts "Creating finance transactions of Febuary..."

create_finance_transactions_and_payers(finance_transactions_nubank_mamae_feb, 'febuary')
create_finance_transactions_and_payers(finance_transactions_nubank_ryan_feb, 'febuary')
create_finance_transactions_and_payers(finance_transactions_pic_pay_feb, 'febuary')
create_finance_transactions_and_payers(finance_transactions_despesas_feb, 'febuary')
create_finance_transactions_and_payers(acount_transactions_mensalidade_luana_feb, 'febuary')
create_finance_transactions_and_payers(finance_transactions_investimentos_feb, 'febuary')

puts "Finance transactions created Febuary"
