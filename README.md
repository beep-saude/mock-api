## Desafio técnico
Implemente um endpoint que receba uma lista de com id de exames, para cada exame faça a autorização utilizando o endpoint de autorização e salve o status e `authorization_id` da autorização

**Obs.: Para fazer a autorização é preciso pegar o tuss na model de Exam**

### Exemplo de parâmetros recebidos na action `authorization#authorize_exams`
```ruby
{
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
```

### URL de autorização
POST https://bded-2804-d41-ef23-ee00-c5a1-e3e0-985c-3719.ngrok-free.app/authorize

### Payload esperado para autorização
```json
{
  "exam": { "tuss": "202410171111" }
}

```

### Exemplo de response do endpoint de autorização
```json
{
	"result": {
		"tuss": "202410171111",
		"authorization_id": "855f7c53-9329-4228-b8ee-f9af7eb828a6",
		"status": "Negado"
	}
}
```
