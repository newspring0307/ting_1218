<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Premium</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h1>�⺻ �����̾� ���� : ting card <span style="color:blue;">DOUBLE!</span></h1>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/week.png" alt="Image"></figure>
						<h2>7 ��</h2>
						<p>�Ϸ� ting Card: 6��</p>
						<p>+ �÷��� ����</p>
						<input class="btn btn-primary btn-lg" value="7,000 ��" type="button"  onclick="showPopup()">
						<!-- ���߿� ������ ���� �� -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/month.png" alt="Image"></figure>
						<h2>30 ��</h2>
						<p>�Ϸ� ting Card: 6��</p>
						<p>+ �÷����÷��� ����</p>
						<input class="btn btn-primary btn-lg" value="���ΰ� 2,5000 ��" type="button"  id="pay_25000" onclick="showPopup()">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/year.png" alt="Image"></figure>
						<h2>365 ��</h2>
						<p>�Ϸ� ting Card: 6��</p>
						<p>+ ���÷��� ����</p>
						<input class="btn btn-primary btn-lg" value="�̺�ƮƯ��! 99,000��" type="button"  id="pay_99000" onclick="showPopup()">
					</div>
				</div>
			</div>
		</div>
	</section>
