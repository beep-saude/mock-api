class AuthorizationController < ApplicationController
  def authorize_exams
    # Exemplo de params
    params = {
      patient: {
        name: 'Oswaldo Cruz',
        birthdate: '1990-01-01',
        cpf: '111.222.333-44',
        card_number: '12345678910',
        health_insurance: 'SulAmérica'
      },
      exams: [
        { catalog_exam_id: 1, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 2, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 3, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 4, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 5, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 6, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 7, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 8, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 9, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 10, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 11, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 12, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 13, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 14, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 15, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 16, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 17, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 18, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 19, doctor: 'Médico Qualquer'},
        { catalog_exam_id: 20, doctor: 'Médico Qualquer'}
      ]
    }


    # Endpoint para autorizar os exames:
    uri = 'https://7946-2804-d41-ef23-ee00-884c-ac2d-7822-1ef4.ngrok-free.app/authorize'

    # Exemplo de payload para esse endpoint
    payload_authorização = {
      "exam": { "tuss": "202410171111" }
    }

    # Exemplo de response
    response = {
      "result": [
        {
          "tuss": "202410171111",
          "authorization_id": "da232203-bef2-43a7-9276-ae05f4f159a1",
          "status": "Autorizado"
        }
      ]
    }
  end
end
