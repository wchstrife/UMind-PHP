<?php  
	error_reporting(E_ALL ^ E_DEPRECATED);
    if(isset($_POST["Submit"]) && $_POST["Submit"] == "确认修改")  
    {   
		$user = $_POST['id'];
        $psw = $_POST["password"];  
        $psw_confirm = $_POST["confirm"];  
        if($psw == "" || $psw_confirm == "")  
        {  
            echo "<script>alert('请确认信息完整性！'); history.go(-1);</script>";  
        }  
        else  
        {  
		
            if($psw == $psw_confirm)  
            {  
                mysql_connect("localhost","root","08");   //连接数据库  
                mysql_select_db("our-mind");  //选择数据库  
                mysql_query("set names 'utf8'"); //设定字符集
				
				$password = md5($psw);
				
				$sql = "UPDATE `user` SET `Password`= '$password' WHERE UserID = '$user' ";    
                $result = mysql_query($sql);    //执行SQL语句  
   
				
                if($result == FALSE)    //更新失败，修改密码失败 
                {  
                    echo "<script>alert('修改密码失败!'); history.go(-1);</script>";  
                }  
                else    //修改密码成功  
                {  
                   echo "<script>alert('修改密码成功!'); history.go(-1);</script>";
                }  
				
            }  
            else  
            {  
                echo "<script>alert('密码不一致！'); history.go(-1);</script>";  
            } 
        }  
    }  
    else  
    {  
        echo 1 ;
	//echo "<script>alert('提交未成功！'); history.go(-1);</script>";  
    }  
?>  