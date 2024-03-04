<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>CRUD</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
<style>
	body {
		background-color: #e5e7eb; /* Tailwind equivalent: bg-gray-300 */
	}
	.container {
		max-width: 1200px;
		margin: 0 auto;
		padding: 20px;
	}
	.heading {
		font-size: 1.5rem;
		font-weight: bold;
		color: #1f2937; /* Tailwind equivalent: text-dark */
	}
	.btn {
		display: inline-block;
		padding: 0.5rem 1rem;
		border-radius: 0.25rem;
		background-color: #000; /* Tailwind equivalent: bg-black */
		color: #fff; /* Tailwind equivalent: text-white */
		text-decoration: none;
	}
	.btn:hover {
		background-color: #4b5563; /* Tailwind equivalent: hover:bg-gray-700 */
	}
	table {
		width: 100%;
		border-collapse: collapse;
	}
	th, td {
		border: 1px solid #d1d5db; /* Tailwind equivalent: border */
		padding: 0.5rem;
		text-align: left;
	}
	.actions a {
		color: #1f2937; /* Tailwind equivalent: text-dark */
		text-decoration: underline;
		margin-right: 0.5rem;
	}
</style>
</head>
<body>

	<div class="container py-8">
		<h1 class="heading mb-4">Student Management</h1>
		<div class="mb-4">
			<a href="new" class="btn">Add New Student</a>
			<a href="list" class="btn">List All Students</a>
			<a href="logout" class="btn">Logout</a>
		</div>
	</div>

	<div class="container bg-white p-8 shadow-md rounded-md mt-8">
		<table>
			<caption class="text-lg font-bold mb-4">List of Students</caption>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>DOB</th>
					<th>School</th>
					<th>Code</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${result}">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.name}" /></td>
						<td><c:out value="${student.age}" /></td>
						<td><c:out value="${student.dob}" /></td>
						<td><c:out value="${student.school}" /></td>
						<td><c:out value="${student.code}" /></td>
						<td><c:out value="${student.email}" /></td>
						<td><c:out value="${student.mobile}" /></td>
						<td class="actions">
							<a href="edit?id=<c:out value='${student.id}' />">Edit</a>
							<a href="delete?id=<c:out value='${student.id}' />">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
