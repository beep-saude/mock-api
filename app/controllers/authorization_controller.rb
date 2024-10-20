class AuthorizationController < ApplicationController
  def authorize_exams
    # Exemplo de params
    
    # {
    #   patient: {
    #     name: 'Oswaldo Cruz',
    #     birthdate: Date.new(1990,01,01),
    #     cpf: '111.222.333-44',
    #     card_number: '12345678910',
    #     health_insurance: 'SulAmérica'
    #   },
    #   exams: [
    #     { catalog_exam_id: 1, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 2, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 3, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 4, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 5, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 6, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 7, doctor: 'Médico Qualquer'},
    #     { catalog_exam_id: 8, doctor: 'Médico Qualquer'},
    #   ]
    # }
  end
end




