*** Settings ***
Resource    ../squash_resources.resource
Library    SeleniumLibrary



*** Test Cases ***
Creation d'un Nouvel Ordre de Livraison
   [Setup]   Authenticate User
             Selection de Prios Agriculture et Navigation
   When L'utilisateur clique sur le bouton "+"
   Then L'utilisateur est redirigé vers un formulaire pour ajouter un nouvel ordre de livraison
   And Si une commande a déjà été créée, alors le formulaire récupère les informations précédemment saisies pour le Preneur d'ordre
   When L'utilisateur sélectionne un type d'ordre de livraison : "OL Standard (STD)"
   Then "OL Standard (STD)" est affiché dans le champ
   When L'utilisateur sélectionne un Site : "Z COREAL (ZCO)"
   Then "Z COREAL (ZCO)" est affiché dans le champ
   When L'utilisateur recherche le 'Tiers donneur d'ordre' en cliquant sur le bouton 'loupe'
