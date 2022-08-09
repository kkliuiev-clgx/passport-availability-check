describe('Check changes in passport queue', () => {
  it('No changes', () => {
    cy.visit('https://pasport.org.ua/');
    cy.get('a').contains('Сервіси').click();
    cy.get('a').contains('Cтан оформлення документів').click();
    cy.get('select[id="doc_service"]').select('2');
    cy.get('select[id="doc_age"]').select('0');
    cy.get('select[id="doc_2_select"]').select('2');
    cy.get('input[id="doc_2_number9"').type('002693734');
    cy.get('button[id="equeue-form-checker-submit"]').click()
    cy.get('.uk-notification-message').contains('Дані відправлено до центру персоналізації')
  })
})
