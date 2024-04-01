<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="complaint_list" value="${m_complaint_list}"></c:set>

	<c:if test="${empty complaint_list}">
		<div class="text-center text-secondary fw-bolder">
			<h1>No Complains Found</h1>
		</div>
	</c:if>

	<c:if test="${not empty complaint_list}">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8 py-5">
						<div class="text-center">
							<h1>All Complaints</h1>
						</div>
						<c:forEach var="complaint" items="${complaint_list}"
							varStatus="status">
							<div class="accordion mb-4" id="accordionExample${status.index}">
								<div class="accordion-item">
									<h2 class="accordion-header">
										<button
											class="accordion-button border border-black all-complaints-btn collapsed"
											type="button" data-bs-toggle="collapse"
											data-bs-target="#collapse${status.index}"
											aria-expanded="false" aria-controls="collapse${status.index}">
											<div id="issueStatus${status.index}"
												class="px-3 py-2 text-center rounded-pill">
												${complaint.getComplaintStatus()}</div>
											<div class="px-2 fw-bold">${complaint.getComplaintTitle()}</div>
											<div class="px-2 text-secondary">${complaint.getComplaintTimestamp().substring(0, 11)}</div>
										</button>
									</h2>

									<div id="collapse${status.index}"
										class="accordion-collapse collapse"
										data-bs-parent="#accordionExample${status.index}">
										<div class="accordion-body">
											<!-- Content of accordion body -->
											<c:if test="${complaint.getComplaintStatus() eq 'Open'}">
												<div class="text-center">
													<video width="150" height="150" preload="none"
														style="background: transparent url('https://cdn-icons-png.flaticon.com/512/10282/10282582.png') 50% 50%/fit no-repeat;"
														autoplay="autoplay" loop="true" muted="muted"
														playsinline="">
														<source
															src="https://cdn-icons-mp4.flaticon.com/512/10282/10282582.mp4"
															type="video/mp4">
													</video>
													<div>Your request has been successfully submitted,
														and we will resolve it at the earliest opportunity.</div>
												</div>
											</c:if>

											<c:if
												test="${complaint.getComplaintStatus() eq 'In progress'}">
												<div class="text-center">
													<video width="100" height="100" preload="none"
														style="background: transparent url('https://cdn-icons-png.flaticon.com/512/12764/12764378.png') 50% 50%/fit no-repeat;"
														autoplay="autoplay" loop="true" muted="muted"
														playsinline="">
														<source
															src="https://cdn-icons-mp4.flaticon.com/512/12764/12764378.mp4"
															type="video/mp4">
													</video>
													<div>Your request is assigned to
														${complaint.getAssignTo()} and will be resolved shortly.</div>
												</div>
											</c:if>

											<c:if test="${complaint.getComplaintStatus() eq 'Closed'}">
												<div class="row">
													<div class="col-md-10">
														<h5 class="text-secondary">Your Issue Resolved</h5>
														<table style="width: 100%;">
															<tr>
																<td>Resolved By</td>
																<td class="text-secondary">${complaint.getAssignTo()}
																	on ${complaint.getResolutionTimestamp()}</td>
															</tr>
															<tr>
																<td>Resolved Message</td>
																<td class="text-secondary">${complaint.getResolution()}</td>
															</tr>
															<tr>
																<td>Your Issue Description</td>
																<td class="text-secondary">${complaint.getComplaintDescription()}</td>
															</tr>
														</table>
													</div>
													<div class="col-md-2 d-flex align-items-center">
														<video width="80" height="80" preload="none"
															style="background: transparent url('https://cdn-icons-png.flaticon.com/512/6569/6569127.png') 50% 50%/fit no-repeat;"
															autoplay="autoplay" loop="true" muted="muted"
															playsinline="">
															<source
																src="https://cdn-icons-mp4.flaticon.com/512/6569/6569127.mp4"
																type="video/mp4">
														</video>
													</div>
												</div>
											</c:if>
										</div>
									</div>
								</div>
							</div>

							<script>
								document
										.addEventListener(
												"DOMContentLoaded",
												function() {
													let button = document
															.querySelector("#accordionExample${status.index} .accordion-button");
													let collapse = document
															.querySelector("#accordionExample${status.index} .accordion-collapse");

													button
															.addEventListener(
																	"click",
																	function() {
																		let expanded = button
																				.getAttribute("aria-expanded") === "true";

																		if (!expanded) {
																			// Issue status 
																			let issueStatusEle = document
																					.getElementById('issueStatus${status.index}');
																			let issueStatusText = issueStatusEle.innerText;

																			if (issueStatusText === 'Open') {
																				issueStatusEle.className = "px-3 py-2 text-center issueOpen rounded-pill";
																			}
																			if (issueStatusText === 'In progress') {
																				issueStatusEle.className = "px-3 py-2 text-center issueInProgress rounded-pill";
																			}
																			if (issueStatusText === 'Closed') {
																				issueStatusEle.className = "px-3 py-2 text-center issueClosed rounded-pill";
																			}
																		}
																	});
												});
							</script>
						</c:forEach>


					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>