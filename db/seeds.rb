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

initial_tags = [
  {
    "title": "Cartao de Credito Nubank Ryan", # tag_one
    "payment_day": "10",
    "close_day": "26",
    "kind": "expense",
    "color": 'info-emphasis'
  },
  {
    "title": "Cartao de Credito Pic Pay", # tag_two
    "payment_day": "10",
    "close_day": "25",
    "kind": "expense",
    "color": 'secondary'
  },
  {
    "title": "Cartao de Credito Nubank Mamae", # tag_three
    "payment_day": "10",
    "close_day": "27",
    "kind": "expense",
    "color": 'secondary-emphasis'
  },
  {
    "title": "Mensalidade Luana", # tag_four
    "payment_day": "10",
    "close_day": "15",
    "kind": "revenue",
    "color": 'warning-emphasis'
  },
  {
    "title": "Investimentos", # tag_five
    "payment_day": "10",
    "close_day": "15",
    "kind": "expense",
    "color": 'light-emphasis'
  },
  {
    "title": "Despesas", # tag_six
    "payment_day": "10",
    "close_day": "15",
    "kind": "expense",
    "color": 'danger'
  },
  {
    "title": "Receitas", # tag_seven
    "payment_day": "30",
    "close_day": "15",
    "kind": "revenue",
    "color": 'success'
  },
  {
    "title": "Pagamentos Recebidos", # tag_eight
    "payment_day": "30",
    "close_day": "15",
    "kind": "revenue",
    "color": 'success-emphasis'
  },
  {
    "title": "Pagamentos Efetuados", # tag_nine
    "payment_day": "30",
    "close_day": "15",
    "kind": "revenue",
    "color": 'danger-emphasis'
  }
]

# finance transactions January of 2024

finance_transactions_nubank_mamae = [ # dates OK
  {
    "title": "Madeira Cama",
    "purchase_date": "27-09-2023",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": "05/10",
    "real_amount": 210.53
  },
  {
    "title": "Notebook Dell",
    "purchase_date": "21-07-2023",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": "08/12",
    "real_amount": 708.44
  },
  {
    "title": "Normatel",
    "purchase_date": "29-12-2023",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 86
  },
  {
    "title": "Normatel",
    "purchase_date": "30-12-2023",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 46.51
  },
  {
    "title": "Duto cabelos",
    "purchase_date": "30-12-2023",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 35
  },
  {
    "title": "first class",
    "purchase_date": "05-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 149.97
  },
  {
    "title": "first class",
    "purchase_date": "05-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 259.97
  },
  {
    "title": "Gs Riomar Carrinhos",
    "purchase_date": "05-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 65
  },
  {
    "title": "Ri happy",
    "purchase_date": "05-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 199.99
  },
  {
    "title": "Sam michel",
    "purchase_date": "06-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 249.98
  },
  {
    "title": "Leitura Riomar",
    "purchase_date": "07-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 65
  },
  {
    "title": "Blitz Intervencoes",
    "purchase_date": "07-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 43
  },
  {
    "title": "Sodine store",
    "purchase_date": "07-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 120.64
  },
  {
    "title": "ArteForm Comercio",
    "purchase_date": "07-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 129.9
  },
  {
    "title": "Filial Fortaleza",
    "purchase_date": "07-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 39.9
  },
  {
    "title": "A Libaneza",
    "purchase_date": "07-01-2024",
    "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Mamae'],
    "installments": '',
    "payers": "Luana,Ryan",
    "real_amount": 252.69
  },
  {
    "title": "Pag nildaMariaDaSilv",
    "purchase_date": "09-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 20
  },
  {
    "title": "Mini Cars",
    "purchase_date": "09-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 20
  },
  {
    "title": "Cd Max",
    "purchase_date": "11-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 154.4
  },
  {
    "title": "Estacionamento Iguate",
    "purchase_date": "14-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 10
  },
  {
    "title": "Pag SodineStore",
    "purchase_date": "11-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 458.93
  }
]

finance_transactions_nubank_ryan = [# dates OK
  {
   "title": "Herman Miller",
   "purchase_date": "27-12-2023",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": "2/12",
   "real_amount": 954.68
  },
  {
   "title": "Amazon",
   "purchase_date": "29-12-2023",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 47.29
  },
  {
   "title": "SmartFit",
   "purchase_date": "11-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 109.9
  },
  {
   "title": "Vivo Controle",
   "purchase_date": "15-01-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 54.99
  },
  {
   "title": "Pag Outgo",
   "purchase_date": "17-01-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 35
  }
]

finance_transactions_pic_pay = [# dates OK
  {
   "title": "Amazon Subwoofer",
   "purchase_date": "28-06-2023",
   "tag": 'Cartao de Credito Pic Pay',
   "installments": "6/10",
   "real_amount": 265.10
  },
]

finance_transactions_despesas = [ #check after...
  {
   "title": "IPVA",
   "payment_date": "02-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 1982.09
  },
  {
   "title": "Colegio Maria Julia",
   "payment_date": "02-01-2024",
   "installments": '',
   "tag": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 650
  },
  {
   "title": "Material Escolar Maria Julia",
   "payment_date": "03-01-2024",
   "installments": '',
   "tag": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 590
  },
  {
   "title": "Wilson Dantas",
   "payment_date": "05-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Wilson Dantas",
   "payment_date": "05-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Raxa BNB",
   "payment_date": "09-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 20
  },
  {
   "title": "Grafica Point S Com",
   "payment_date": "11-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 26
  },
  {
   "title": "Raxa BNB Mensalidade",
   "payment_date": "15-01-2024",
   "installments": '',
   "tag": 'Despesas',
   "real_amount": 60
  },
  # {
  #  "title": "XP investimentos",
  #  "payment_date": "02-01-2024",
  #  "installments": '',
  #  "tag": 'Despesas',
  #  "real_amount": 1000
  # },
  # {
  #  "title": "Pagamento PicPay",
  #  "payment_date": "03-01-2024",
  #  "installments": '',
  #  "tag": 'Despesas',
  #  "real_amount": 265.10
  # },
  # {
  #  "title": "Pagamento Cartao Nubank Mamae",
  #  "payment_date": "30-01-2024",
  #  "installments": '',
  #  "tag": 'Despesas',
  #  "real_amount": 3325.85
  # },
]

acount_transactions_mensalidade_luana = [#check after
  {
    "kind": "revenue",
    "title": "Plano de saude",
    "payment_date": "16-02-2024",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 200
  },
  {
    "kind": "revenue",
    "title": "Alimentacao",
    "payment_date": "16-02-2024",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 150
  },
  {
    "kind": "revenue",
    "title": "Necesser",
    "payment_date": "16-02-2024",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 25
  },
  {
    "kind": "revenue",
    "title": "A parte",
    "payment_date": "16-02-2024",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 192
  },
]

finance_transactions_investimentos = [
  {
    "title": "Fundos imobiliarios",
    "payment_date": "02-01-2024",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 500
  },
  {
    "title": "Acoes",
    "payment_date": "02-01-2024",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 500
  }
]

finance_transactions_receitas = [
  {
    "kind": "revenue",
    "title": "Salario",
    "payment_date": "30-01-2024",
    "installments": '',
    "tag": 'Receitas',
    "payers": "IA",
    "real_amount": 4313.17
  },
  {
    "kind": "revenue",
    "title": "Ressalva ppay",
    "payment_date": "02-02-2024",
    "installments": '',
    "tag": 'Receitas',
    "payers": "Mae",
    "real_amount": 1500
  }
]

# finance transactions January of 2024

# finance transactions February of 2024

finance_transactions_nubank_mamae_feb = [ # dates OK
  {
    "title": "MP GuicheWeb Circo Americano",
    "purchase_date": "27-01-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 160.50
  },
  {
    "title": "Amazon Prime Canais",
    "purchase_date": "12-02-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": '',
    "real_amount": 29.90
  },
  {
    "title": "Silcar Veiculos Evaporadora",
    "purchase_date": "16-02-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "installments": "1/3",
    "real_amount": 280.64
  },
]

finance_transactions_nubank_ryan_feb = [# dates OK
  {
   "title": "Mercado Livre Cabo Thunderbolt",
   "purchase_date": "01-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 179.99
  },
  {
   "title": "Fix Pay Bateria",
   "purchase_date": "01-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 440.00
  },

  {
   "title": "Amazon",
   "purchase_date": "05-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 42.90
  },
  {
   "title": "Uhuu Dzo Ingresso Renato Albani",
   "purchase_date": "08-02-2024",
   "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 144.00
  },
  {
   "title": "Pag Francisca Mao de Obra Val. Expansao",
   "purchase_date": "08-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 390.00
  },
  {
   "title": "T.R Maia Performance Sup - Mensalidade Jiu-Jistu MJ",
   "purchase_date": "09-02-2024",
   "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 150
  },
  {
   "title": "T.R Maia Performance Sup - Matricula Jiu-Jistu MJ",
   "purchase_date": "09-02-2024",
   "tag": ['Mensalidade Luana', 'Cartao de Credito Nubank Ryan'],
   "payers": "Luana,Ryan",
   "installments": '',
   "real_amount": 40
  },
  {
   "title": "Smart Fit",
   "purchase_date": "14-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 109.90
  },
  {
   "title": "Vivo Controle",
   "purchase_date": "15-02-2024",
   "tag": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 54.99
  }
]

finance_transactions_despesas_feb = [ #check after...
  {
   "title": "Colegio Maria Julia",
   "payment_date": "02-01-2024",
   "installments": '',
   "tag": ['Mensalidade Luana', 'Despesas'],
   "payers": "Luana,Ryan",
   "real_amount": 700
  }
]

acount_transactions_mensalidade_luana_feb = [#check after
  {
    "kind": "revenue",
    "title": "Plano de saude",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 200
  },
  {
    "kind": "revenue",
    "title": "Alimentacao",
    "installments": '',
    "tag": 'Mensalidade Luana',
    "payers": "Luana",
    "real_amount": 150
  },

]

finance_transactions_investimentos_feb = [
  {
    "title": "Fundos imobiliarios",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 500
  },
  {
    "title": "Acoes",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 500
  }
]

finance_transactions_receitas_feb = [
  {
    "kind": "revenue",
    "title": "Salario",
    "payment_date": "29-02-2024",
    "installments": '',
    "tag": 'Receitas',
    "payers": "IA",
    "real_amount": 6030.12
  },
  {
    "kind": "revenue",
    "title": "Dinheiro Aniversario",
    "payment_date": "02-02-2024",
    "installments": '',
    "tag": 'Receitas',
    "payers": "Pai",
    "real_amount": 200
  },
  {
    "kind": "revenue",
    "title": "Dinheiro saco de lixo tio JR",
    "payment_date": "17-02-2024",
    "installments": '',
    "tag": 'Receitas',
    "payers": "Pai",
    "real_amount": 30
  }
]

finance_transaction_payments_received_feb = [
  {
    "kind": "revenue",
    "title": "Ressalva ppay",
    "payment_date": "03-03-2024",
    "installments": '',
    "tag": 'Receitas',
    "tag_month": 'february',
    "payers": "Mae",
    "real_amount": 2000
  },
  {
    "kind": "revenue",
    "title": "Pagamento Mensalidade Luana",
    "payment_date": "03-03-2024",
    "installments": '',
    "tag": 'Pagamentos Recebidos',
    "tag_month": 'february',
    "payers": "Luana",
    "real_amount": 890
  },
]

finance_transaction_payments_made_feb = [
  {
    "kind": "revenue",
    "title": "Pagamento Cartao de credito Nubank Mamae",
    "payment_date": "02-29-2024",
    "installments": '',
    "tag": 'Pagamentos Efetuados',
    "tag_month": 'february',
    "payers": "Ryan",
    "real_amount": 1390.01
  },
  {
    "kind": "revenue",
    "title": "Pagamento Cartao de credito Nubank Ryan",
    "payment_date": "02-29-2024",
    "installments": '',
    "tag": 'Pagamentos Efetuados',
    "tag_month": 'february',
    "payers": "Ryan",
    "real_amount": 2506.46
  }
]

# finance transactions February of 2024

# finance transactions March of 2024

finance_transactions_despesas_mar = [
  {
   "title": "Wilson Dantas Pedrosa",
   "payment_date": "03-02-2024",
   "installments": '',
   "tag": 'Despesas',
   "payers": "Ryan",
   "real_amount": 6.00
  },
  {
   "title": "Raxa bnb",
   "payment_date": "03-05-2024",
   "installments": '',
   "tag": 'Despesas',
   "payers": "Ryan",
   "real_amount": 60.00
  },
  {
   "title": "Secretaria da fazendo do estado do ceara",
   "payment_date": "03-07-2024",
   "installments": '',
   "tag": 'Despesas',
   "payers": "Ryan",
   "real_amount": 201.24
  }
]

finance_transactions_investimentos_mar = [
  {
    "title": "Fundos imobiliarios",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 508.00
  },
  {
    "title": "Acoes",
    "installments": '',
    "tag": 'Investimentos',
    "real_amount": 500.00
  }
]

finance_transaction_payments_made_mar = [
  {
    "kind": "revenue",
    "title": "Pagamento Escola Maria Julia",
    "payment_date": "03-01-2024",
    "installments": '',
    "tag": 'Pagamentos Efetuados',
    "tag_month": 'march',
    "payers": "Ryan",
    "real_amount": 700
  }
]

finance_transactions_nubank_mamae_mar = [
  {
    "title": "Google TT",
    "purchase_date": "03-04-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 24.00
  },
  {
    "title": "Amazon Fortaleza Epp",
    "purchase_date": "03-05-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 65.00
  },
  {
    "title": "Zp*Happy Kids",
    "purchase_date": "03-10-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 100.00
  },
  {
    "title": "Kid + Ride",
    "purchase_date": "03-10-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 35.00
  },
  {
    "title": "Pag*Leiturariomar",
    "purchase_date": "03-16-2024",
    "tag": 'Cartao de Credito Nubank Mamae',
    "real_amount": 25.00
  },
]

finance_transactions_nubank_ryan_mar = [
  {
    "title": "T.R Maia Performace Sup",
    "purchase_date": "03-08-2024",
    "tag": 'Cartao de Credito Nubank Ryan',
    "real_amount": 160.00
  },
  {
    "title": "Amazon Prime Canais",
    "purchase_date": "03-12-2024",
    "tag": 'Cartao de Credito Nubank Ryan',
    "real_amount": 29.90
  },
  {
    "title": "Sua Academia",
    "purchase_date": "03-13-2024",
    "tag": 'Cartao de Credito Nubank Ryan',
    "real_amount": 109.90
  },
  {
    "title": "Estorno de Amazon Prime Canais",
    "purchase_date": "03-13-2024",
    "tag": 'Cartao de Credito Nubank Ryan',
    "real_amount": 29.90
  },
  {
    "title": "Vivo Controle",
    "purchase_date": "03-15-2024",
    "tag": 'Cartao de Credito Nubank Ryan',
    "real_amount": 54.99
  },
]

def create_payers(payers)
  payers.each do |payer|
    payer_created = Payer.create!(
      name: payer[:name]
    )

    puts "Create payer: #{payer_created.attributes}"
  end
end

def create_tags(tags)
  tags.each do |tag|
    tag_created = Tag.create!(
      title: tag[:title],
      payment_day: tag[:payment_day],
      close_day: tag[:close_day],
      kind: tag[:kind],
      color: tag[:color]
    )

    puts "Create tag: #{tag_created.attributes}"
  end
end

def create_finance_transactions_and_payers(finance_transactions, month)
  finance_transactions.each do |finance_transaction|
    if finance_transaction[:tag].is_a?(Array)
      finance_transaction[:tag].each_with_index do |tag_name, index|
        tag = Tag.find_by(title: tag_name)
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

        if finance_transaction[:tag_month].present?
          attributes.merge!(month: finance_transaction[:tag_month])
        end

        if month.present?
          attributes.merge!(month: month)
        end

        finance_transaction_created = FinanceTransaction.create!(attributes)

        puts "Create finance transaction: #{finance_transaction_created.attributes}"

        payer_finance_transaction_created = PayersFinanceTransaction.create!(
          finance_transaction: finance_transaction_created,
          payer: payer
        )

        puts "Create payer finance transaction: #{payer_finance_transaction_created.attributes}"

        if finance_transaction[:tag_month].present?
          month = finance_transaction[:tag_month]
        end

        tag_finance_transaction_created = TagsFinanceTransaction.create!(
          finance_transaction: finance_transaction_created,
          tag: tag
        )

        puts "Create tag finance transaction: #{tag_finance_transaction_created.attributes}"
      end
    else
      tag = Tag.find_by(title: finance_transaction[:tag])
      payer = finance_transaction[:payers].present? ? Payer.find_by(name: finance_transaction[:payers]) : Payer.find_by(name: 'Ryan')

      attributes = {
        title: finance_transaction[:title],
        installments: finance_transaction[:installments],
        real_amount: finance_transaction[:real_amount],
        tags_finance_transactions_attributes: {
          id: nil,
          tag_id: tag.id
        }
      }

      attributes.merge!(purchase_date: finance_transaction[:purchase_date]) if finance_transaction[:purchase_date].present?
      attributes.merge!(payment_date: finance_transaction[:payment_date]) if finance_transaction[:payment_date].present?

      if finance_transaction[:kind].present?
        attributes.merge!(kind: finance_transaction[:kind])
      elsif payer.present? && payer.name != 'Ryan'
        attributes.merge!(kind: :revenue)
      end

      if month.present?
        attributes.merge!(month: month)
      end

      finance_transaction_created = FinanceTransaction.create!(attributes)

      puts "Create finance transaction: #{finance_transaction_created.attributes}"

      payer_finance_transaction_created = PayersFinanceTransaction.create!(
        finance_transaction: finance_transaction_created,
        payer: payer
      )

      puts "Create payer finance transaction: #{payer_finance_transaction_created.attributes}"
    end
  end
end

puts "Creating initial payers..."

create_payers(initial_payers)

puts "Payers created"

puts "Creating initial tags..."

create_tags(initial_tags)

puts "Tags created"

puts "Creating finance transactions of January..."

create_finance_transactions_and_payers(finance_transactions_nubank_mamae, 'january')
create_finance_transactions_and_payers(finance_transactions_nubank_ryan, 'january')
create_finance_transactions_and_payers(finance_transactions_pic_pay, 'january')
create_finance_transactions_and_payers(finance_transactions_despesas, 'january')
create_finance_transactions_and_payers(acount_transactions_mensalidade_luana, 'january')
create_finance_transactions_and_payers(finance_transactions_investimentos, 'january')
create_finance_transactions_and_payers(finance_transactions_receitas, 'january')

puts "Finance transactions created January"

puts "Creating finance transactions of February..."

create_finance_transactions_and_payers(finance_transactions_nubank_mamae_feb, 'February')
create_finance_transactions_and_payers(finance_transactions_nubank_ryan_feb, 'February')
create_finance_transactions_and_payers(finance_transactions_despesas_feb, 'February')
create_finance_transactions_and_payers(acount_transactions_mensalidade_luana_feb, 'February')
create_finance_transactions_and_payers(finance_transactions_investimentos_feb, 'February')
create_finance_transactions_and_payers(finance_transactions_receitas_feb, 'February')
create_finance_transactions_and_payers(finance_transaction_payments_received_feb, 'February')
create_finance_transactions_and_payers(finance_transaction_payments_made_feb, 'February')

puts "Finance transactions created February"

puts "Creating finance transactions of March..."

create_finance_transactions_and_payers(finance_transactions_despesas_mar, 'March')
create_finance_transactions_and_payers(finance_transaction_payments_made_mar, 'March')
create_finance_transactions_and_payers(finance_transactions_investimentos_mar, 'March')
create_finance_transactions_and_payers(finance_transactions_nubank_mamae_mar, 'March')
create_finance_transactions_and_payers(finance_transactions_nubank_ryan_mar, 'March')

puts "Finance transactions created March"


puts "including main tag in finance transactions..."

FinanceTransaction.joins(:tags)
  .where.not(tags: {title: ['Despesas', 'Receitas', 'Investimentos', 'Pagamentos Recebidos', 'Pagamentos Efetuados']})
  .each do |finance_transaction|

  if finance_transaction.revenue?
    tag = Tag.find_by(title: 'Receitas')
  else
    tag = Tag.find_by(title: 'Despesas')
  end

  TagsFinanceTransaction.create!(
    finance_transaction: finance_transaction,
    tag: tag
  )
end