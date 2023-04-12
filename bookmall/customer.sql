-- customer ���̺�(����ȣ, �̸�, �ּ�, ��ȭ��ȣ)
CREATE TABLE customer(
    custid  number primary key,
    name    VARCHAR2(40) not null,
    address VARCHAR2(50),
    phone   VARCHAR2(20)
);

-- customer �ڷ� �߰�
INSERT INTO customer VALUES (1,'������','���� ��ü����','000-5000-0001');
INSERT INTO customer VALUES (2,'�迬��','���ѹα� ����','000-6000-0001');
INSERT INTO customer VALUES (3,'�Ȼ�','���ѹα� ���ֱ�����','000-7000-0001');
INSERT INTO customer VALUES (4,'������','�̱� �����',null);
INSERT INTO customer VALUES (5,'�����','���� ��Ʈ��','000-8000-0001');

-- ��ȭ��ȣ�� ���� ���� ã���ÿ�
select * from customer WHERE phone is null;

-- �ּҰ� ���ѹα��� ���� �˻��Ͻÿ�
select * from customer where address like '%���ѹα�%';

-- ���� �̸������� �����Ͻÿ� (�������� [ASC]/��������[DESC])
select * from customer ORDER by name;

select * from customer;

