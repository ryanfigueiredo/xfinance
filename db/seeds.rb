# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Methods of creation

def create_origins(origins)
  origins.each do |origin|
    origin = Origin.create!(
      title: origin[:title]
    )

    puts "Create origin: #{origin.attributes}"
  end
end

def create_account_transactions_and_payers(account_transactions)
  account_transactions.each do |account_transaction|
    if account_transaction[:origin].present?
      origin = Origin.find_by(title: account_transaction[:origin])

      attributes = {
        title: account_transaction[:title],
        purchase_date: account_transaction[:purchase_date],
        installments: account_transaction[:installments],
        real_amount: account_transaction[:real_amount],
        origin_id: origin.id
      }

      attributes.merge!(kind: account_transaction[:kind]) if account_transaction[:kind].present?
      account_transaction_created = AccountTransaction.create!(attributes)

      puts "Create account transaction: #{account_transaction_created.attributes}"

      if account_transaction[:payers].present?
        payers = account_transaction[:payers].split(',')

        payers.each do |payer|
          payer = Payer.create!(
            name: payer,
            account_transaction_id: account_transaction_created.id
          )

          puts "Create payer : #{payer.attributes}"
        end
      end
    end
  end
end

# Records

initial_origins = [
  {
    "title": "Cartao de Credito Nubank Ryan"
  },
  {
    "title": "Cartao de Credito Pic Pay"
  },
  {
    "title": "Cartao de Credito Nubank Mamae"
  },
  {
    "title": "Mensalidade Luana"
  },
  {
    "title": "Despesas"
  },
  {
    "title": "Investimentos"
  },
  {
    "title": "Receitas"
  }
]

puts "Creating initial origins..."

create_origins(initial_origins)

# account transactions January of 2024

account_transactions_nubank_mamae = [
  {
    "title": "Madeira Cama",
    "purchase_date": "26-12-2023",
    "origin": 'Cartao de Credito Nubank Mamae',
    "installments": "04/10",
    "real_amount": 210.53
  },
 {
  "title": "Notebook Dell",
  "purchase_date": "26-12-2023",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": "07/12",
  "real_amount": 708.44
 },
 {
  "title": "Normatel",
  "purchase_date": "29-12-2023",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 86
 },
 {
  "title": "Normatel",
  "purchase_date": "30-12-2023",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 46.51
 },
 {
  "title": "Duto cabelos",
  "purchase_date": "30-12-2023",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 35
 },
 {
  "title": "first class",
  "purchase_date": "05-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 149.97
 },
 {
  "title": "first class",
  "purchase_date": "05-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 259.97
 },
 {
  "title": "Gs Riomar Carrinhos",
  "purchase_date": "05-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 65
 },
 {
  "title": "Ri happy",
  "purchase_date": "05-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 199.99
 },
 {
  "title": "Sam michel",
  "purchase_date": "06-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 249.98
 },
 {
  "title": "Leitura Riomar",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 65
 },
 {
  "title": "Blitz Intervencoes",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 43
 },
 {
  "title": "Sodine",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 120.64
 },
 {
  "title": "ArteForm Comercio",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 129.9
 },
 {
  "title": "Filial Fortaleza",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 39.9
 },
 {
  "title": "A Libaneza",
  "purchase_date": "07-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 252.69
 },
 {
  "title": "Pag nildaMariaDaSilv",
  "purchase_date": "09-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 20
 },
 {
  "title": "Mini Cars",
  "purchase_date": "09-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 20
 },
 {
  "title": "Cd Max",
  "purchase_date": "11-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 154.4
 },
 {
  "title": "Estacionamento Iguate",
  "purchase_date": "14-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "real_amount": 10
 },
 {
  "title": "Pag SodineStore",
  "purchase_date": "11-01-2024",
  "origin": 'Cartao de Credito Nubank Mamae',
  "installments": '',
  "payers": "Luana,Ryan",
  "real_amount": 458.93
 }
]

account_transactions_nubank_ryan = [
  {
   "title": "Herman Miller",
   "purchase_date": "27-12-2023",
   "origin": 'Cartao de Credito Nubank Ryan',
   "installments": "2/12",
   "real_amount": 954.68
  },
  {
   "title": "Amazon",
   "purchase_date": "29-12-2023",
   "origin": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 47.29
  },
  {
   "title": "SmartFit",
   "purchase_date": "11-02-2024",
   "origin": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 109.9
  },
  {
   "title": "Vivo Controle",
   "purchase_date": "15-01-2024",
   "origin": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 54.99
  },
  {
   "title": "Pag Outgo",
   "purchase_date": "17-01-2024",
   "origin": 'Cartao de Credito Nubank Ryan',
   "installments": '',
   "real_amount": 35
  }
]

account_transactions_pic_pay = [
  {
   "title": "Amazon Subwoofer",
   "purchase_date": "28-05-2023",
   "origin": 'Cartao de Credito Pic Pay',
   "installments": "6/10",
   "real_amount": 265.10
  },
]

account_transactions_despesas = [
  {
   "title": "IPVA",
   "purchase_date": "02-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 1982.09
  },
  {
   "title": "Colegio Maria Julia",
   "purchase_date": "02-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "payers": "Luana, Ryan",
   "real_amount": 700
  },
  {
   "title": "Material Escolar Maria J",
   "purchase_date": "03-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "payers": "Luana, Ryan",
   "real_amount": 590
  },
  {
   "title": "Wilson Dantas Milho",
   "purchase_date": "05-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Wilson Dantas Milho",
   "purchase_date": "05-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 5
  },
  {
   "title": "Raxa BNB",
   "purchase_date": "09-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 20
  },
  {
   "title": "Grafica Point S Com",
   "purchase_date": "11-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 26
  },
  {
   "title": "Raxa BNB Mensalidade",
   "purchase_date": "15-01-2024",
   "installments": '',
   "origin": 'Despesas',
   "real_amount": 60
  }
]

acount_transactions_mensalidade_luana = [
  {
   "title": "Plano SD",
   "purchase_date": "10-01-2024",
   "installments": '',
   "origin": 'Mensalidade Luana',
   "real_amount": 200
  },
  {
   "title": "Alimentacao",
   "purchase_date": "10-01-2024",
   "installments": '',
   "origin": 'Mensalidade Luana',
   "real_amount": 150
  }
]

account_transactions_investimentos = [
  {
   "title": "Fundos imobiliarios",
   "purchase_date": "02-01-2024",
   "installments": '',
   "origin": 'Investimentos',
   "real_amount": 500
  },
  {
   "title": "Acoes",
   "purchase_date": "02-01-2024",
   "installments": '',
   "origin": 'Investimentos',
   "real_amount": 500
  }
]

account_transactions_receitas = [
  {
   "kind": "expense",
   "title": "Salario",
   "purchase_date": "30-01-2024",
   "installments": '',
   "origin": 'Receitas',
   "payers": "IA",
   "real_amount": 4313.17
  },
  {
   "kind": "expense",
   "title": "Ressalva ppay",
   "purchase_date": "30-01-2024",
   "installments": '',
   "origin": 'Receitas',
   "real_amount": 1500
  }
]

# account transactions January of 2024

puts "Creating account transactions and payers of January 2024..."
jaunary_2024_account_transactions = account_transactions_nubank_mamae + # fixed values
                                    account_transactions_nubank_ryan + # fixed values
                                    account_transactions_pic_pay + # fixed values
                                    account_transactions_despesas + # fixed values
                                    acount_transactions_mensalidade_luana + # fixed values
                                    account_transactions_investimentos + # fixed values
                                    account_transactions_receitas # fixed values

create_account_transactions_and_payers(jaunary_2024_account_transactions)
