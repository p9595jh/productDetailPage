<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>


<div class="container" style="margin-top: 80px;">
	<h2>All Products</h2>
	<p>제품 목록</p>
	<table class="table table-hover">
		<thead>
			<tr class="bg-success">
				<th>Name</th>
				<th>Category</th>
				<th>Price</th>
				<th>Manufacturer</th>
				<th>UnitInStock</th>
				<th>Description</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.name}</td>
					<td>${product.category}</td>
					<td>${product.price}</td>
					<td>${product.manufacturer}</td>
					<td>${product.unitInStock}</td>
					<td>${product.description}</td>
					<td>
						<a href="<c:url value="/viewProduct/${product.id}" />">
							<i class="fa fa-info-circle"></i>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>