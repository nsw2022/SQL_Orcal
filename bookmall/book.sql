-- book ���̺� ���� (������ȣ, �����̸�, ���ǻ�, ��������)
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(50) NOT NULL,
    publisher VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);
-- �̸� ����
--ALTER TABLE book COLUMN rename price to saleprice; 
-- �ڷ��� ����
ALTER TABLE book MODIFY bookname VARCHAR2(60); 
desc book;

-- book �ڷ��� �Է�
INSERT INTO book VALUES (1,'�౸�� ����','�½�����',7000);
INSERT INTO book VALUES (2,'�౸�ƴ� ����','������',13000);
INSERT INTO book VALUES (3,'�౸�� ����','���ѹ̵��',22000);
INSERT INTO book VALUES (4,'���� ���̺�','���ѹ̵��',35000);
INSERT INTO book VALUES (5,'�ǰ� ����','�½�����',8000);
INSERT INTO book VALUES (6,'����� ����','�½�����',6000);
INSERT INTO book VALUES (7,'�߱��� �߾�','�̻�̵��',20000);
INSERT INTO book VALUES (8,'�߱��� ��Ź��','�̻�̵��',13000);
INSERT INTO book VALUES (9,'�ø��� �̾߱�','�Ｚ��',75000);
INSERT INTO book VALUES (10,'olympic Champions','Person',13000);


-- �ڷ�˻�
select book.bookname, book.price from book;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�(�ߺ�����)
select DISTINCT book.publisher from book;

-- Ư���� ���� (where ��)
-- ������ 20000�� �̸��� ������ �˻��Ͻÿ�
select book.bookname from book where book.price < 20000;

-- ������ 10000�� �̻� 20000�� ������ ������ �˻��Ͻÿ� (BETWEEN ~ AND)
select * from book where book.price BETWEEN 10000 and 20000;

-- OR ����, IN('a','b')
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻��Ͻÿ�
select * from book where book.publisher in ('�½�����','���ѹ̵��');

select * from book where book.publisher = '�½�����' or book.publisher = '���ѹ̵��';

-- '�౸�� ����'�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
--select * from book where book.name = '�౸�� ����';

-- �����̸��� '�౸'�� ���Ե� ���ǻ縦 �˻��Ͻÿ�
select * from book where bookname like '%�౸%';

-- �౸�� ���� ������ ������ 20000�� �̻��� ������ ã���ÿ�
select * from book where bookname like '%�౸%' and book.price >= 20000;

-- ������ �Ѽ��� ���Ͻÿ�
select count(*) �ѵ����� from book;

-- ���� �� �ְ� ������ �˻��Ͻÿ�
select MAX(book.price) from book;
-- ���� ����(��øSub query)
select bookname,price from book where price = (select MAX(book.price) from book); 

-- ���� ������ ���� ������ �����Ͻÿ�
select * from book order by price desc, book.publisher asc;

desc book;