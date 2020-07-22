#language: pt

Funcionalidade: Validar o endereço da unidade no Distrito Federal através do site Fleury e selecionar outra unidade

    Para que possa escolher uma unidade
    Estando na página principal do site Fleury
    Preciso validar o endereço da unidade no Distrito Federal
    Para selecionar outra unidade a partir da seleção

    @unidadedf
    Cenário: Validar endereço unidade Distrito Federal
        Dado que o usuário esteja na página principal do site Fleury
        Quando usuário clica em unidades
        E digita no campo de busca "Distrito Federal", site carrega as opções
        E usuario deve clicar na opção desejada
        Então usuario deve visualizar a página do site Fleury na unidade Brasília


    @selecionarunidade
    Cenário: Validar a seleção de uma unidade a partir das escolhas de facilidade
        Dado que o usuário esteja na página principal do site Fleury
        Quando usuário clica em unidades
        E seleciona as facilidades, site carrega as opções
        Então deve clicar na primeira unidade que for apresentada
        E usuario deve visualizar a pagina na unidade selecionada