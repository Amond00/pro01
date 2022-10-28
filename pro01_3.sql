create table faq(
    no number primary key,
    title varchar2(100) not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    gubun number not null,      --����0 �亯1 ����
    parno number not null       --������ �亯�� ���� ��ȣ
    );
    
    create sequence faq_seq;
    create sequence faq2_seq;
    select * from faq order by parno asc, gubun asc;
    select * from faq where no=2;
    commit;
    
    insert into faq values (faq_seq.nextval, '����1', '��������1', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '����2', '��������2', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '����3', '��������3', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '����4', '��������4', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '����5', '��������5', 'admin', sysdate, 0, faq_seq.currval);
    
    insert into faq values (faq_seq.nextval, '�亯1', '�亯����1', 'admin', sysdate, 1, 1);
    insert into faq values (faq_seq.nextval, '�亯2', '�亯����2', 'admin', sysdate, 1, 2);
    insert into faq values (faq_seq.nextval, '�亯3', '�亯����3', 'admin', sysdate, 1, 3);
    insert into faq values (faq_seq.nextval, '�亯4', '�亯����4', 'admin', sysdate, 1, 4);
    insert into faq values (faq_seq.nextval, '�亯5', '��������5', 'admin', sysdate, 1, 5);
    
    
    
    
create table qna(
    no number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    author varchar2(20) not null,
    resdate date not null,
    lev number not null,    --���� 0 �亯 1 (����)
    parno number not null,  --�θ�� ��ȣ(����� ������ȣ)
    sec char(1)             --��б� ���� ��б� �ƴϸ� 0, ��б��̸� 1  
);
drop table qna;

select * from member;
create sequence qna_seq;
drop sequence qna_seq;
select * from qna;
select * from qna order by parno asc, lev asc;
select * from qna where lev=0 order by parno asc, lev asc;
commit;

-- ������ ���� no�� parno�� ������ �ִ� lev1�� �������� �����Ͷ�
select * from qna where parno=1 and lev=1;
select * from qna where parno=6;
delete from qna where parno=6;
delete from qna where no=12;

--�޾ƿ� parno���� �亯�� ���
insert into qna values (qna_seq.nextval, ?, ?, ?, sysdate, 1, qparno, ?);
--insert into qna values (qna_seq.nextval, ?����, ?����, ?�ۼ���, sysdate, 1�亯, qparno�޾ƿ��ȳ�, ?��б�����);


insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ1','���� ���� ���� ��� �׽�Ʈ1 ����','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ2','���� ���� ���� ��� �׽�Ʈ2 ����','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ3','���� ���� ���� ��� �׽�Ʈ3 ����','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ4','���� ���� ���� ��� �׽�Ʈ4 ����','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ5','���� ���� ���� ��� �׽�Ʈ5 ����','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '���� ���� ��� �׽�Ʈ6','���� ���� ���� ��� �׽�Ʈ6 ����','hth2',sysdate,0,qna_seq.currval,1);

insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ1','���� ���� �亯 ���� ��� �׽�Ʈ1 ����','admin',sysdate,1,1,1);
insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ2','���� ���� �亯 ���� ��� �׽�Ʈ2 ����','admin',sysdate,1,2,1);
insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ3','���� ���� �亯 ���� ��� �׽�Ʈ3 ����','admin',sysdate,1,3,1);
insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ4','���� ���� �亯 ���� ��� �׽�Ʈ4 ����','admin',sysdate,1,4,1);
insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ5','���� ���� �亯 ���� ��� �׽�Ʈ5 ����','admin',sysdate,1,5,1);
insert into qna values (qna_seq.nextval, '���� ���� �亯 ��� �׽�Ʈ6','���� ���� �亯 ���� ��� �׽�Ʈ5 ����','admin',sysdate,1,6,1);


    
