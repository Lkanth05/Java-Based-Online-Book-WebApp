<%@page import="com.book.ProductDAO"%>
<%@page import="com.book.Product"%>
<%@page import="java.util.List"%>
<jsp:include flush="true" page="navbar.jsp"/>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.min.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script src="js/move-top.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script>

<div class="container mt-5">
<div class="main">
    <div class="content">
        <%
            if (session.getAttribute("msg") != null) {
        %>
        <div class="row">
            <div class="col-sm-5 mx-auto">
                <div class="alert alert-success text-center p-1 my-1">
                    <strong><%= session.getAttribute("msg")%></strong>
                </div>
            </div>
        </div>
        <%
                session.removeAttribute("msg");
            }
        %>        
        <div class="section group">
        <h2 class="text-center text-capitalize">CATEGORY : <%= request.getParameter("spname")%></h2>
            <%
                List<Product> list = ProductDAO.findByName(request.getParameter("spname"));
                if (list.size() == 0) {
            %>
            <h2>No Item found..!!</h2>
            <%
            } else {
                for (Product p : list) {
            %>
            <div class="grid_1_of_4 images_1_of_4 overflow-hidden">
                <a href="cart1.jsp?prodid=<%= p.getProdid()%>&qty=1">
                    <img height="200" width="200" src="images2/<%= p.getPhoto()%>" alt="" /></a>
                    
                <h2 class="p-2 border mt-1"><%= p.getPname()%></h2>       

                <p class="p-0"><%= p.getPcat()%></p>
                <p class="p-1"><span class="strike">&#8377;<%= p.getPrice()%>
                    </span><span class="price">&#8377;<%= p.getDisc_price()%></span></p>
                <% if (!p.getInstock().equals("In Stock")) {%>
                <div class="pos-absolute" 
                     style="transform: rotate(-45deg);top:125px;left:-90px;width:420px">
                    <div class="alert alert-danger font-weight-bold p-2 ">
                        <%= p.getInstock()%>
                    </div>
                </div>                
                <div class="button mr-0">
                    <a href="javascript:void(0)">Add to Cart</a>
                </div>
                <div class="button ml-0"><span><a href="javascript:void(0)" class="details">Details</a></span></div>                
                <% } else { %>
                <div class="button mr-0">
                    <a href="Operation?prodid=<%= p.getProdid()%>&qty=1">Add to Cart</a>
                </div>
                <div class="button ml-0"><span><a href="cart1.jsp?prodid=<%= p.getProdid()%>" class="details">Details</a></span></div>                
                <% } %>
            </div>
            <% }
                }%>
        </div>
    </div>
</div>
</div>
<script>
</script>
<%@include file="footer.jsp" %>