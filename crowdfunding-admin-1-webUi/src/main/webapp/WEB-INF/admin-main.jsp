<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<html lang="UTF-8">
<%--引入头部，样式等--%>
<head>
<%@ include file="/WEB-INF/include-head.jsp"%>
</head>

<body>
	<%--引入公共标题栏--%>
	<%@ include file="/WEB-INF/include-nav.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<%--引入公共导航栏--%>
			<%@ include file="/WEB-INF/include-sidebar.jsp"%>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">控制面板</h1>

				<div class="row placeholders">
					<security:authorize access="hasRole('董事长')">
						<div class="col-xs-6 col-sm-3 placeholder">
							<img data-src="holder.js/200x200/auto/sky" class="img-responsive"
								alt="Generic placeholder thumbnail">
							<h4>Label</h4>
							<span class="text-muted">董事长</span>
						</div>
					</security:authorize>
					<security:authorize access="hasAuthority('role:add')">
						<div class="col-xs-6 col-sm-3 placeholder">
							<img data-src="holder.js/200x200/auto/vine"
								class="img-responsive" alt="Generic placeholder thumbnail">
							<h4>Label</h4>
							<span class="text-muted">role:get</span>
						</div>
					</security:authorize>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/sky" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder">
						<img data-src="holder.js/200x200/auto/vine" class="img-responsive"
							alt="Generic placeholder thumbnail">
						<h4>Label</h4>
						<span class="text-muted">Something else</span>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>

