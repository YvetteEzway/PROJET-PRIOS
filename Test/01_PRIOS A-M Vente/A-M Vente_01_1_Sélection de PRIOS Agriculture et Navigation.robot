
*** Settings ***
Resource    ../squash_resources.resource
Library    SeleniumLibrary



*** Test Cases ***
Sélection de "PRIOS Agriculture" et Navigation
    [Setup]   Authenticate User
    Given L'utilisateur se trouve sur la page "Plateformes métier"
    When L'utilisateur sélectionne l'option "PRIOS Agriculture" dans la section "Plateformes métier"
    Then Il est redirigé vers une nouvelle page avec les menus de navigation
    Then Les menus de navigation affichent les options suivantes dans les premières "8" options :
    Then Les menus de navigation affichent les options suivantes :
    When L'utilisateur clique sur "PRIOS A-M Ventes"
    Then L'affichage de la page présente les fonctions suivantes dans la première partie de la deuxième colonne :
    Then L'affichage de la page présente les fonctions suivantes dans la seconde partie de la deuxième colonne :
    When L'utilisateur sélectionne "Ordres de livraison" dans la deuxième colonne
    Then Les fonctions suivantes apparaissent dans la première partie de la troisième colonne :
    Then Les fonctions suivantes apparaissent dans la seconde partie de la troisième colonne :
    When L'utilisateur sélectionne Ordres de livraison dans la troisième colonne
    Then L'utilisateur est redirigé vers un formulaire contenant une liste vide d'ordres de livraison
    # Prendre une capture d'écran de la page après le clic
    Capture Page Screenshot    clicked_element_screenshot2.png


    [Teardown]    Teardown Test Environment