import {Url} from '../credencia'

export function login(cy,email,password,escenario) {
    cy.visit(Url+"/ghost/#/signin");
    cy.get(".email").type(email);
    cy.get(".password").type(password);
    cy.get(".login").click();
    cy.screenshot(escenario+"/paginalogin");
  }
  export function newPage(cy,escenario) {
    cy.get('a[href="#/pages/"]').click({ force: true });
    cy.screenshot(escenario+"/paginaNueva");
    cy.visit(Url+"/ghost/#/editor/page")
    //cy.get('a[href="#/editor/page/"]').click({ force: true });
  }
  export function newPageTitle(cy, title, escenario) {
    cy.get('textarea[tabindex="1"]').type(title);
    cy.screenshot(escenario+"/tituloPagina");
    cy.get('div[data-kg="editor"]').click();
  }

  export function newPageContent(cy, text,escenario) {
    cy.get('div[data-kg="editor"]').type(text);
    cy.screenshot(escenario+"/contenidoPagina");
  }
  export function returnPageList(cy,escenario) {
    cy.get('a[href="#/pages/"]').click({ force: true });
    cy.screenshot(escenario+"/retornarPageList");
  }
  export function verifyPageTitle(cy, title,escenario) {
    cy.get("h3").contains(title);
    cy.screenshot(escenario+"/verificacionTitulo");
  }
  export function selectPage(cy, title, escenario) {
    cy.get('a[href="#/pages/"]').click({ force: true });
    cy.get("h3").contains(title).click({ force: true });
    cy.screenshot(escenario+"/seleccionarPagina");
  }
  export function configurationPage(cy, escenario){
     cy.get('button[class="post-settings"]').click({ force: true })
     cy.screenshot(escenario+"/configuracion");
  }

  export function deletePage(cy,escenario){
      cy.get('button[class="gh-btn gh-btn-hover-red gh-btn-icon settings-menu-delete-button"]').click({ force: true })
      cy.wait(3000);
      cy.screenshot(escenario+"/borrarPagina");
      cy.get('button[class="gh-btn gh-btn-red gh-btn-icon ember-view"]').click({ force: true });
  }

  export function publishPage(cy,escenario){
    cy.get("span").contains("Publish").click({ force: true });
    cy.get("button > span").contains("Publish").click({ force: true });
    cy.screenshot(escenario+"/publicarPagina");
    
  }
  export function verifyPageCreation(cy, title,escenario) {
    cy.get('div[class="gh-notification-content"]').contains("Published");
    cy.screenshot(escenario+"/verificarCreacion");
  }

  export function returnToPage(cy,title,escenario){
    cy.get("h3").contains(title).click({ force: true });
  }

  export function visitPages(cy,escenario){
    cy.visit(Url+"/ghost/#/pages");
    cy.screenshot(escenario+"/retornarPageList");
  }
  export function linkVerification(cy,title,escenario){
    cy.get('a[class="post-view-link"]').click({ force: true });
  }

  export function verifyAuthor(cy, author,escenario) {
    
    cy.get('li[class="ember-power-select-multiple-option js-draggableObject draggable-object ember-view"]').contains(author);
    cy.screenshot(escenario+"/verfificarAutor");
  }
  
    