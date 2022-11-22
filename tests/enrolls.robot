*** Settings ***
Documentation    Suite de testes de matricula de alunos
...              Administrador uma vez logado consegue matriculr alunos na academia

Resource    ../resources/base.resource

*** Test Cases ***
Deve matricular um alunos

    # Jessica Dias
    # Smart
    # 11/13/2022

    ${admin}    Create Dictionary
    ...         name=Admin
    ...         email=admin@smartbit.com 
    ...         pass=qacademy

    Do Login    ${admin} 

    Go to Enrolls
    Go to Enrolls form
    Select Student    Jessica Dias
    Select Plan       Smart
    Fill Start Date

    
    Sleep    10


