<!doctype html>
<html>
<head>
<style>
#header {
    background-color:$CCC;
    color:black;
    text-align:center;
    padding:5px;
}
#section {
    width:800px;
    float:left;
    padding:10px;	 	 
}
</style>
<meta charset="utf-8">
<title>输入信息-ing</title>
</head>

<body>

<div id="header">
	<h1>Change-Password</h1>
</div>

<div id="section">

	<h3>Please input the password you want to change.</h3>
	
    	<?php
			$user = $_GET['id'];
			echo "<script>
				var name = '$user';
				
				</script>"
		?>
    	<form action="pswcheck.php" method="post" style="align-content:center">  
   			
            <input type="hidden"  name="id" id="id"/>
             修改密码：<input type="password" name="password"/>  
   			 <br/>  
    		 确认密码：<input type="password" name="confirm"/>  
    		 <br/>  
    		<input type="Submit" name="Submit" value="确认修改"/>  
         </form>
         
         <a href="Userpage.php">返回</a> 
         <script>
		 document.getElementById('id').value = name ;
		 </script>
    
</div>
</body>
</html>