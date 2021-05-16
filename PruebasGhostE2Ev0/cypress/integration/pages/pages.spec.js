import { login,verifyAuthor,linkVerification,datePages,newPage,newPageTitle,verifyPageTitle,returnPageList, configurationPage,selectPage,deletePage,publishPage,verifyPageCreation,returnToPage, visitPages} from "./listFuction.js";
import {Email, Password, User} from '../credencia'
context("Page Escenarios", () => {
  let title;
 
  let author=User;   //aca se debe indicar el nombre de usuario del perfil de ghost
  let email = Email;
    let password = Password;

  
  beforeEach(() => {
    //iniciar sesion


    title= "Este es un test de crear una page"
    login(cy,email,password);
  });
  it("Given: Estando loggeado exitosamente en la aplicacion. WHEN: proceso a la seccion de pages. " +
        "THEN: creo una nueva Page borrador.", () => {
     
    //ir a la pagina de crear una nueva pagina
    newPage(cy,"borradorPagina");
    //escribir el titulo de la pagina correspondiente
    newPageTitle(cy,title,"borradorPagina");
    //Regresar al home de paginas
    returnPageList(cy,"borradorPagina");
    //verificación de que quedara el borrador de la pagina
    verifyPageTitle(cy,title,"borradorPagina");
    
  });
  it("Given: Estando loggeado exitosamente en la aplicacion. WHEN: proceso a la seccion de pages. " +
        "THEN: selecciono la page"+
        "THEN: se elimina por configuracion", () => {
     
    //seleccionar el post
    selectPage(cy,title,"borrarPagina");
    //ir a configuraciones del post
    configurationPage(cy,"borrarPagina");
   //eliminar el post
    deletePage(cy,"borrarPagina")
    
  });
  it("Given: Estando loggeado exitosamente en la aplicacion. WHEN: proceso a la seccion de pages. " +
        "THEN: selecciono la page"+
        "THEN: se publica la page"+
        "THEN: se verifica la creacion", () => {
    //ir a la pagina de crear new Post
   newPage(cy,"publicarPagina");
   //escribir el titulo
   newPageTitle(cy,title,"publicarPagina");
   //volver a lista de paginas
   returnPageList(cy,"publicarPagina");
   //Ingresar a la pagina creada
   returnToPage(cy,title,"publicarPagina");
   //publicar pagina
   publishPage(cy,"publicarPagina");
   //retornar a la lista de paginas
   returnPageList(cy,"publicarPagina");
   //Ingresar a la pagina creada
   returnToPage(cy,title,"publicarPagina");
   //Valdar la publicación de la pagina
   verifyPageCreation(cy, title,"publicarPagina")
 });
 
 it("Given: Estando loggeado exitosamente en la aplicacion. WHEN: proceso a la seccion de pages. " +
        "THEN: selecciono la page"+
        "THEN: se ingresa a configuracion"+
        "THEN: se verifica el autor", () => {
  //ir a la pagina de crear new Post
  visitPages(cy,"verificarAutor");
  //ingresar a la pagina en cuestión
  returnToPage(cy,title,"verificarAutor");
  //acceder a la configuración
  configurationPage(cy,"verificarAutor");
  //verificar el creador de la pagina
  verifyAuthor(cy, author,"verificarAutor");
 
});
it("Given: Estando loggeado exitosamente en la aplicacion. WHEN: proceso a la seccion de pages. " +
        "THEN: selecciono la page"+
        "THEN: se ingresa a configuracion"+
        "THEN: se verifica el link de acceso", () => {
  //ir a la pagina de crear new Post
  visitPages(cy,"verificacionLink");
  //ingresar a la pagina en cuestión
  returnToPage(cy,title,"verificacionLink");
  //acceder a la configuración
  configurationPage(cy,"verificacionLink");
  //ingresar al link de la pagina
  linkVerification(cy,title,"verificacionLink");
});

})