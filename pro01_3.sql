create table faq(
    no number primary key,
    title varchar2(100) not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    gubun number not null,      --질문0 답변1 구분
    parno number not null       --질문과 답변의 공통 번호
    );
    
    create sequence faq_seq;
    create sequence faq2_seq;
    select * from faq order by parno asc, gubun asc;
    select * from faq where no=2;
    commit;
    
    insert into faq values (faq_seq.nextval, '질문1', '질문내용1', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '질문2', '질문내용2', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '질문3', '질문내용3', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '질문4', '질문내용4', 'admin', sysdate, 0, faq_seq.currval);
    insert into faq values (faq_seq.nextval, '질문5', '질문내용5', 'admin', sysdate, 0, faq_seq.currval);
    
    insert into faq values (faq_seq.nextval, '답변1', '답변내용1', 'admin', sysdate, 1, 1);
    insert into faq values (faq_seq.nextval, '답변2', '답변내용2', 'admin', sysdate, 1, 2);
    insert into faq values (faq_seq.nextval, '답변3', '답변내용3', 'admin', sysdate, 1, 3);
    insert into faq values (faq_seq.nextval, '답변4', '답변내용4', 'admin', sysdate, 1, 4);
    insert into faq values (faq_seq.nextval, '답변5', '질문내용5', 'admin', sysdate, 1, 5);
    
    
    
    
create table qna(
    no number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    author varchar2(20) not null,
    resdate date not null,
    lev number not null,    --질문 0 답변 1 (깊이)
    parno number not null,  --부모글 번호(공통된 고유번호)
    sec char(1)             --비밀글 유무 비밀글 아니면 0, 비밀글이면 1  
);
drop table qna;

select * from member;
create sequence qna_seq;
drop sequence qna_seq;
select * from qna;
select * from qna order by parno asc, lev asc;
select * from qna where lev=0 order by parno asc, lev asc;
commit;

-- 위에서 받은 no의 parno를 가지고 있는 lev1의 콘텐츠를 가져와라
select * from qna where parno=1 and lev=1;
select * from qna where parno=6;
delete from qna where parno=6;
delete from qna where no=12;

--받아온 parno글의 답변을 등록
insert into qna values (qna_seq.nextval, ?, ?, ?, sysdate, 1, qparno, ?);
--insert into qna values (qna_seq.nextval, ?제목, ?내용, ?작성자, sysdate, 1답변, qparno받아온팔노, ?비밀글유무);


insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트1','문의 질문 내용 등록 테스트1 내용','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트2','문의 질문 내용 등록 테스트2 내용','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트3','문의 질문 내용 등록 테스트3 내용','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트4','문의 질문 내용 등록 테스트4 내용','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트5','문의 질문 내용 등록 테스트5 내용','hth',sysdate,0,qna_seq.currval,1);
insert into qna values (qna_seq.nextval, '문의 질문 등록 테스트6','문의 질문 내용 등록 테스트6 내용','hth2',sysdate,0,qna_seq.currval,1);

insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트1','문의 질문 답변 내용 등록 테스트1 내용','admin',sysdate,1,1,1);
insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트2','문의 질문 답변 내용 등록 테스트2 내용','admin',sysdate,1,2,1);
insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트3','문의 질문 답변 내용 등록 테스트3 내용','admin',sysdate,1,3,1);
insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트4','문의 질문 답변 내용 등록 테스트4 내용','admin',sysdate,1,4,1);
insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트5','문의 질문 답변 내용 등록 테스트5 내용','admin',sysdate,1,5,1);
insert into qna values (qna_seq.nextval, '문의 질문 답변 등록 테스트6','문의 질문 답변 내용 등록 테스트5 내용','admin',sysdate,1,6,1);


    
