<%
  Object o = session.getAttribute("admin");
  if(o == null){
    response.sendRedirect("login.jsp");
  }
%>
  