<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%
 //   String name = (String)request.getAttribute("name");
 //   String email = (String)request.getAttribute("email");
 //  String phone = (String)request.getAttribute("phone");
 //  String address = (String)request.getAttribute("address");
  //  int totalPrice = (int)request.getAttribute("totalPrice");
     String name = (String)request.getParameter("name");
     String clientIdx = (String)request.getParameter("clientIdx");
     String goodName = (String)request.getParameter("goodName");
     String goodIdx = (String)request.getParameter("goodIdx");
     String method = (String)request.getParameter("method");
    
     String stotalPrice = (String)request.getParameter("totalPrice");
     
      int totalPrice = Integer.parseInt(stotalPrice);   
     System.out.println("name: "+name);
     System.out.println("clientIdx: "+clientIdx);
     System.out.println("goodName: "+goodName);
     System.out.println("goodIdx: "+goodIdx);
     System.out.println("method: "+method);
     
     System.out.println("stotalPrice: "+stotalPrice);
      System.out.println("totalPrice: "+totalPrice); 
 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
    <script>
    $(function(){
        var IMP = window.IMP; // ��������
        IMP.init('imp63155918'); // 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Tingtoday ����',
            amount : <%=totalPrice%>,
            buyer_name : '<%=goodName%>',
            buyer_tel : '<%=clientIdx%>',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] �����ܿ��� �������� ��ȸ�� ���� jQuery ajax�� imp_uid �����ϱ�
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error�� �߻����� �ʵ��� �������ּ���
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //��Ÿ �ʿ��� �����Ͱ� ������ �߰� ����
                    }
                }).done(function(data) {
                    //[2] �������� REST API�� ��������Ȯ�� �� ���񽺷�ƾ�� �������� ���
                    if ( everythings_fine ) {
                        msg = '������ �Ϸ�Ǿ����ϴ�.';
                        msg += '\n����ID : ' + rsp.imp_uid;
                        msg += '\n���� �ŷ�ID : ' + rsp.merchant_uid;
                        msg += '\���� �ݾ� : ' + rsp.paid_amount;
                        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                        //[3] ���� ����� ������ ���� �ʾҽ��ϴ�.
                        //[4] ������ �ݾ��� ��û�� �ݾװ� �޶� ������ �ڵ����ó���Ͽ����ϴ�.
                    }
                });
                //������ �̵��� ������
                /*
                
                */
                var clientIdx=<%=clientIdx%>;
                var goodName = <%=goodName%>;
                var goodIdx = <%=goodIdx%>;
                var method = "<%=method%>";             
                opener.location.href="Premium_2_payresult?clientIdx="+clientIdx+"&goodIdx="+goodIdx+"&method="+method;
                close()               	                	 
            } else {
                msg = '������ �����Ͽ����ϴ�.';
                msg += '�������� : ' + rsp.error_msg;
                //���н� �̵��� ������
                /* location.href="Premium_0_main.do"; */
                close()
                alert(msg);
            }
        });
        
    });
    </script> 
 
</body>
</html>