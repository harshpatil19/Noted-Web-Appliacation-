<nav class="navbar navbar-expand-lg navbar-dark purple">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp">Note Taker</a>
		<!-- this will redirect to index.jsp page if we click on Note Taker -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp">Home</a></li>
					<!-- this will redirect to index.jsp page if we click on Home -->
				<li class="nav-item"><a class="nav-link" href="add_notes.jsp">Add Note</a></li>
				<!-- this will redirect to add_notes page if we click on ADD NOTES -->
				<li class="nav-item"><a class="nav-link " href="all_notes.jsp"    
					tabindex="-1" aria-disabled="true">Show Notes</a></li>
					<!-- this will redirect to all_notes page if we click on SHOW NOTES -->
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-light" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>