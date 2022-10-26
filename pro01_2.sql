-- 글 추가 (등록)
create sequence bno_seq;
insert into board values(bno_seq.nextval, '','','','','');


-- 10개 씩 나누기
-- select * from board where row num between ? and ? order by no desc;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
select no, title, content, author, resdate from
(select rownum rn, no, title, content, author, resdate from board order by no desc) t1 where t1.rn between 1 and 20;
-- select no, title, content, author, resdate from (select row num rn, no, title, content, author, resdate from board order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
-- pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
-- startNum = curPage * 10 - 9;
-- endNum = curPage * 10;

--글 상세 보기
select a.no no, a.title tit, a.content con, b.name nm, to_char(a.resdate, 'yyyy-MM-dd') res from board a inner join member b on a.author=b.id where a.no=1;
-- 
--
--
--
--
