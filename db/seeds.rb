# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

exams = [
  {:name=>"RT-PCR para SARS-CoV-2 (Covid-19)", :tuss=>"40314618"},
  {:name=>"Sorologia para COVID-19 (IgM e IgG anti-S-RBD)", :tuss=>"40324778"},
  {:name=>"SCID - Teste do Pezinho", :tuss=>"40503143"},
  {:name=>"MCAD - Teste do Pezinho", :tuss=>"40321029"},
  {:name=>"Doença de Pompe - Teste do Pezinho", :tuss=>nil},
  {:name=>"Tandem - Teste do Pezinho Qualitativo", :tuss=>"40312224"},
  {:name=>"PKU Fenilalanina - Teste do Pezinho", :tuss=>"40301818"},
  {:name=>"Cromatografia de Aminoácidos - Teste do Pezinho", :tuss=>"40301672"},
  {:name=>"Hemoglobinopatias - Teste do Pezinho", :tuss=>"40319474"},
  {:name=>"TSH - Teste do Pezinho", :tuss=>"40316521"},
  {:name=>"T4 - Teste do Pezinho", :tuss=>"40316548"},
  {:name=>"17 OH Progesterona - Teste do Pezinho", :tuss=>"40316017"},
  {:name=>"Tripsina Imuno Reativa - Teste do Pezinho", :tuss=>"40302563"},
  {:name=>"Biotinidase - Teste do Pezinho", :tuss=>"40306488"},
  {:name=>"Toxoplasmose IgM - Teste do Pezinho", :tuss=>"40307832"},
  {:name=>"Galactose Total - Teste do Pezinho", :tuss=>"40301974"},
  {:name=>"G6PD - Teste do Pezinho", :tuss=>"40302059"},
  {:name=>"Citomegalovirus IgM - Teste do Pezinho", :tuss=>"40306674"},
  {:name=>"Treponema Pallidum IgM - Teste do Pezinho", :tuss=>"40306615"},
  {:name=>"CHAGAS NEONATAL - ANTICORPOS TOTAIS - Teste do pezinho", :tuss=>"40306615"}
]


exams.each do |exam_hash|
  next if Exam.exists?(exam_hash)

  Exam.create(exam_hash)
end

puts 'Exames cadastrados com sucesso!'