#!/bin/sed -rf

:begin_loop
/.{40}/! {
# ���� � ��� �ݣ ������ ��� 40 ��������, �� �� ��������
# �ݣ ���� �������
N
# ���� ����������� ������� ������, �� ��
# ������� ���� ����� � �������(����� ������ 40), ��-�� ����������,
# ���� ����� ������ ���.
/\n$/ b
# ������� N �������� ��� \n, ������ ��� �� ������
s/\n/ /
# ���������� ����
b begin_loop
}
# � ������ ������ 40 �������� - �������� �����
# ��� ������������ �������� �������������� - �� ��������� ��������� ���
# ����� ����� ������� ������
s/^(.{,40})\s/\1\n/
# ���� ����� �������, (������ ����̣� \n), ����� ��������� � ������.
t end_loop
# ������ ������ - ������ ������� 40 ��������, ������ ��������� ţ ������.
# ��������� �������� ���� ���-��, ������ � ��� ���� ������� ����� �������
# �������, �� ������ ��, ������� ����� �� ��������
s/^(\S+)\s/\1\n/

:end_loop
# ������. ���������� ������ ���������� ������ �� ������� \n
P
# ��������� ������� �������� ������-��� ������������� ������,
# � ��������� � ����� begin_loop, ��� �������� ��. ������
D
