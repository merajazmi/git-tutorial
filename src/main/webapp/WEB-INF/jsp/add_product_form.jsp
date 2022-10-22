<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
<h1>Add Product Here</h1>
  
  <div class="container mt-3">
  <div class="row">
  
  <div class="col-md-6 offset-md-3">
  <h1 class="text-center mb-3">Fill The Product Details</h1>
  
                   
                           <form action="handle-product" method="post">
                           <div class="from-group">
                           <label for="name">Product Name</label>
                           <input type="text" class="form-control"
                           id="name" 
                           name="name"
                           placeholder="Enter Product here">
                           
                           </div >
                           
                           <div class="from-group">
                           <label for="description">Product description</label>
                           <textarea class="form-control"
                           name="description"
                            rows="5" placeholder="Enter the Description"></textarea>
                        
                           </div>
                           
                           <div class="from-group">
                           <label for="price">Product Price</label>
                           <input type="text" name="price"
                           placeholder="Enter Price Here"
                           class="form-control"
                           id="price">
                       
                           </div>
                           
                           <div class="container text-center">
                           <a href="${pageContext.request.contextPath }/"
                                      class="btn btn-danger">Back</a>  
                        
                           
                           <button type="submit" class="btn btn-primary">Add</button>
                           </div>
                           
                           
                           
                           </form>   
  
  
  </div>
  
  
  </div>
  
  </div>

</body>
</html>