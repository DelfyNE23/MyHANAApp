using app.interactions from '../db/interactions';

service CatalogService  @(requires: 'authenticated-user') {
   
    entity Interactions_Header as projection on interactions.Interactions_Header;

    //@requires: 'Admin'
    entity Interactions_Items
    @(restrict: [{
        grant: 'READ',
        to: 'Admin',
        where: 'LANGU = ''EN'''
    }])
      as projection on interactions.Interactions_Items;


}
