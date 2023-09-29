-- CRIANDO A TABELA EQUIPAMENTO
create table EQUIPAMENTO
(
    ID_EQUIPAMENTO NUMBER constraint EQUIPAMENTO_PK primary key,
    NM_EQUIPAMENTO VARCHAR2(255),
    DS_EQUIPAMENTO VARCHAR2(1024),
    NR_ETIQUETA VARCHAR2(255)

);

-- CRIANDO UM ÍNDICE
create index "EQUIPAMENTO_NM_EQUIPAMENTO_INDEX"
    on EQUIPAMENTO (NM_EQUIPAMENTO);

-- CRIANDO A SEQUÊNCIA
create sequence SQ_EQUIPAMENTO;

-- CRIANDO UMA TRIGGER
create or replace trigger TG_SQ_EQUIPAMENTO
    before insert or update on EQUIPAMENTO
    for each row begin
    if inserting and :new.ID_EQUIPAMENTO is null then
        :new.ID_EQUIPAMENTO := SQ_EQUIPAMENTO.nextval;
    end if;
end;