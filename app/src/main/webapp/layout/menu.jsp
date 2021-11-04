<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale-1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title></title>
<style>
.all {
}
.search {
	display: flex;
	margin: 5px;
}
.search-bar {
	margin-top: 5px;
}
.search-bar-input{
	width: 100%;
	height: 25px;
}
.button-search {
	background: white;
	border: 1px solid;
	cursor: pointer;
	margin-top: 5px;
	padding-left: 5px;
}
.button-search:hover {
	background: #f4f4f4;
}
.view{
	margin-top: 2px;
	margin-bottom: 2px;
}
.form{
	margin-top: 2px;
	margin-bottom: 2px;
}
.a-view {
	text-decoration: none;
	color: blue;
	margin-left: 5px;
}
.a-form {
	text-decoration: none;
	color: blue;
	margin-left: 5px;
}
.a-view:hover {
	color: red;
}
.a-form:hover {
	color: red;
}
</style>

</head>
<body>
	<div class="all">
		<div class="menu">
			<div class="search">
				<div class="search-bar">
					<input class="search-bar-input" type="text" placeholder="Search..">
				</div>
				<button class="button-search">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button>
			</div>
			<hr>
			<div class="list-menu">
				<div class="view">
					<a href="#" class="a-view"><i class="fa fa-table" aria-hidden="true"></i>
					View contents</a>
				</div>
				<hr>
				<div class="form">
					<a href="#" class="a-form"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					View contents</a>
				</div>
				<hr>
			</div>
		</div>
	</div>
</body>