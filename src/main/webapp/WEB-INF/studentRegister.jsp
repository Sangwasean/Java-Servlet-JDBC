<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>CRUD</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-300">

	<div class="text-center ">
		<h1 class="text-3xl font-bold text-black">User Register</h1>
		<div >
			<a href="new"
				class="inline-block text-white bg-black rounded p-2">Add
				New User</a> <a href="list"
				class="inline-block text-white bg-black rounded ml-2 p-2 my-4">List
				All Students</a>
		</div>
	</div>

	<div class="max-w-md mx-auto bg-white shadow-md rounded-md p-4">

		<c:choose>
			<c:when test="${student != null}">
				<form action="update" method="post">
					<input type="hidden" name="id"
						value="<c:out value='${student.id}' />" />
			</c:when>
			<c:otherwise>
				<form action="insert" method="post">
			</c:otherwise>
		</c:choose>

		<table class="w-full border border-collapse">
			<caption class="text-lg font-bold">
				<c:choose>
					<c:when test="${student != null}">
                        Edit Student
                    </c:when>
					<c:otherwise>
                        Add New Student
                    </c:otherwise>
				</c:choose>
			</caption>

			<c:if test="${student != null}">
				<input type="hidden" name="id"
					value="<c:out value='${student.id}' />" />
			</c:if>

			<tr>
				<th class="border p-2">Name:</th>
				<td class="border"><input type="text" name="name"
					class="w-full "
					value="<c:out value='${student.name}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">Age:</th>
				<td class="border"><input type="number" name="age"
					class="w-full"
					value="<c:out value='${student.age}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">DOB:</th>
				<td class="border"><input type="date" name="dob"
					class="w-full "
					value="<c:out value='${student.dob}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">School:</th>
				<td class="border"><input type="text" name="school"
					class="w-full"
					value="<c:out value='${student.school}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">Code:</th>
				<td class="border"><input type="text" name="code"
					class="w-full"
					value="<c:out value='${student.code}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">Email:</th>
				<td class="border"><input type="email" name="email"
					class="w-full"
					value="<c:out value='${student.email}' />" /></td>
			</tr>
			<tr>
				<th class="border p-2">Mobile:</th>
				<td class="border"><input type="tel" name="mobile"
					class="w-full "
					value="<c:out value='${student.mobile}' />" /></td>
			</tr>
			<tr>
				<td colspan="2" class="text-center"><input
					type="submit" value="Save"
					class="bg-black text-white rounded cursor-pointer p-2">
				</td>
			</tr>
		</table>
		</form>
	</div>

</body>
</html>
