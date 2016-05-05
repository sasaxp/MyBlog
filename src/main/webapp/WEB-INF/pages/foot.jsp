<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/1 0001
  Time: 下午 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel='stylesheet' type='text/css' />
<script type="text/javascript">
  $(function(){
    $("#save").click(function(){
      var title = $("#Mtitle").val();
      var content = $("#Mcontent").val();
      if(title !=""&& content !=""){
        var url ="${pageContext.request.contextPath}/saveMessage";
        var args = {"title":title,"content":content};
        $.post(url,args,function(){
          alert("留言成功！")
        });
      }else{
        alert("主题和内容都不能为空！");
      }
    });
  })
</script>
<div class="footer_bg" id="contact"><!-- start footer -->
  <div class="container">
    <div class="row footer">
      <div class="col-md-8 contact_left">
        <h3>Leave a message</h3>
        <h4>You can leave a message in below:</h4>
        <form id="messageForm">
          <input id ="Mtitle" type="text" name="title" value="Subject" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Subject';}">
          <textarea id ="Mcontent" name="content" onFocus="if(this.value == 'Your Messages here....') this.value='';" onBlur="if(this.value == '') this.value='Your Messages here....';" >Your Message here....</textarea>

          <span class="pull-right">
            <input id="save" type="button" value="submit us" class="foot-button">
          </span>
        </form>
      </div>
      <div class="col-md-4  contact_right">
        <p><span>Just a note: </span> <br/>Success is getting what you want, happiness is wanting what you get. <br/>A  strong  man will  struggle  with  the  storms  of  fate.The best preparation for tomorrow is doing your best today.</p>
        <ul class="list-unstyled address">
          <li><i class="fa fa-phone"></i><span> 15201895065</span></li>
          <li><i class="fa fa-envelope"></i><span>1749362086@qq.com</span></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="footer1_bg"><!-- start footer1 -->
  <div class="container">
    <div class="row  footer">
      <div class="copy text-center">
        <p class="link"><span>Copyright &copy; 2016. This's my world. Welcome to you.</span></p>
        <a href="#home" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
      </div>
    </div>
    <script type="text/javascript">
      $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
          if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
              $('html,body').animate({
                scrollTop: target.offset().top
              }, 1000);
              return false;
            }
          }
        });
      });
    </script>
    <!---- start-smoth-scrolling---->
  </div>
</div>

