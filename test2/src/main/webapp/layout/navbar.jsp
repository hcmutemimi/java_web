<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale-1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title></title>
<style>
.header {
	display: flex;
}

.text {
	margin: 5px;
}

.icon {
	display: flex;
	position: absolute;
	right: 10px;
	color: #130a63;
}

.user-icon {
	position: absolute;
	right: 30px;
	margin: 5px;
}

.sort-icon {
	margin: 5px;
	position: absolute;
	right: 0px;
	background: none;
	border: none;
	cursor: pointer;
}

.sort-icon:hover {
	color: red;
}



.option {
	position: absolute;
	z-index:1;
	top: 35px;
	right: 10px;
	box-shadow: 0 2px 10px 0 rgba(0, 0, 0, .1);
	width: 120px;
	background-color: none;
}

.user, .logout {
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 15px;
}

.a-user, .a-logout {
	text-decoration: none;
	color: black;
}

.a-user:hover {
	color: blue;
}

.a-logout:hover {
	color: blue;
}
</style>

</head>
<body>
	<header>
		<div class="header">
			<div class="text">CMS</div>
			<div class="icon">
				<div class="user-icon">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div class="drop-down">
					<button class="sort-icon">
						<i class="fa fa-sort-desc" aria-hidden="true"></i>
					</button>
					<div class="option" style="display: none;">
						<div class="user">
							<a href="#" class="a-user"><i class="fa fa-user"
								aria-hidden="true"></i>User Profile</a>
						</div>
						<hr>
						<div class="logout">
							<a href="#" class="a-logout"><i class="fa fa-sign-out"
								aria-hidden="true"></i>Logout</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</header>
	<script type="text/javascript">
	let btn=document.querySelector('button');
	let div=document.querySelector('.option');
	
	btn.addEventListener('click',()=>{
		if(div.style.display==='none'){
			div.style.display='block';
		}else{
			div.style.display='none';
		}
	})
	
</script>
</body>