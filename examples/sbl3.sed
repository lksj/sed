#!/usr/bin/sed -nf

# �������� ���� (���������) ������ �����
/./!d

# ������ � ��� ������� �������� ������
:x
	# �������� ţ
	p
	# ��������� ���������
	n
	# ���� �������? ����� ���������� �������� �������� ������
	/./bx

# �������� ��� - ��� ������ ������
:z
	# �������� ��������� ������, ���� ţ ��� (������� - ���������)
	# �� ����� ���������� n ������ ��������� ������
	n
	# �ݣ ���� ������? ����� �� ţ ����������, � ��������� � ���������
	# ���� ������ ������� ��� ������ ������
	/./!bz

# ��� ������ ������ ���� �������/���������������
# � ������ �� ��������� �ݣ ���� ������ ������ ����� ���, ��� ������ ������������
i\

bx