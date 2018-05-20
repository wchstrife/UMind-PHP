<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	$user = '123';//$_POST['user'];
	$mind = 'test';//$_POST['name'];
	$author = '123';//$_POST['author'];
	
	mysql_connect('localhost', 'root', '08');
	mysql_select_db('our-mind');
	
	//查询当前用户有权限编辑的节点
	$sql = "SELECT * FROM `editinfo` WHERE AuthorID = '$author' and MindName = '$mind' and EditerID = '$user'";
	$res = mysql_fetch_array(mysql_query($sql));
	
	//当前用户没有任何节点的编辑权限
	if($res == FALSE)
	{
		$sql = "SELECT * FROM `nodeinfo` WHERE MindName = '$mind' and AuthorID = '$author' ORDER BY NodeLevel ASC";
		$res = mysql_query($sql);
		
		while($row = mysql_fetch_array($res,MYSQL_ASSOC))
		{
			$temple[]=$row;
		}
		
		//首先记录根节点
		if($temple[0]['NodeLevel'] == '0')
		{
			$result['root'] = $temple[0];	
		}
		//处理Display的操作顺序
		
		for($i=1;$i<count($temple);$i++)
		{
			if($temple[$i]['NodeLevel'] == '1')
			{
				$result['remove'][] = $temple[$i]['NodeID'];
			}
			
			$result['add'][] = $temple[$i];
		}
		
		$json = json_encode($result);	
		echo $json;
		
	}
	//当前用户有节点的编辑权限
	else{
		//查询isBegin=1的节点	
		$sql ="SELECT * FROM `editinfo` WHERE AuthorID = '$author' and MindName = '$mind' and EditerID = '$user' and isBegin = '1'";
		$res = mysql_query($sql);
		
		while($row = mysql_fetch_array($res,MYSQL_ASSOC))
		{
			$temple[]=$row;
		}
			
		//x:取当前用户没有权限的所有节点
		$sql = "SELECT * FROM `nodeinfo` WHERE not exists (SELECT * FROM `editinfo` WHERE  nodeinfo.AuthorID = editinfo.AuthorID and nodeinfo.MindName = editinfo.MindName and nodeinfo.NodeID = editinfo.NodeID and editinfo.EditerID = '$user') ORDER BY NodeLevel ASC";
		$res = mysql_query($sql);
		
		while($row = mysql_fetch_array($res,MYSQL_ASSOC))
		{
			$result[]=$row;
		}
		
		//y:遍历出用户没有权限并且其他用户也没有权限更改的节点。
		$j = 0;
		for($i=0;$i<count($temple);$i++)
		{
			$parent = $temple[$i]['ParentID'];
			while($parent != 'null')
			{
				$sql="SELECT * FROM `nodeinfo` WHERE AuthorID = '$author' and MindName = '$mind' and NodeID = '$parent'";
				$res = mysql_query($sql);
				$Just[$j] = mysql_fetch_array($res,MYSQL_ASSOC);
				
				$parent = $Just[$j]['ParentID'];
				$j = $j + 1;		
			}
		}
		
		//x-y：需要同步的节点
		for($i=0;$i<count($Just);$i++)
		{
			for($j=0;$j<count($result);$j++)
			{
				if($Just[$i]['NodeID'] == $result[$j]['NodeID'])
				{
					$result[$j]['NodeID'] = '';	
				}
			}
		}
		
		//处理Display的操作顺序
			//首先记录根节点
		$sql="SELECT * FROM `nodeinfo` WHERE AuthorID = '$author' and MindName = '$mind' and NodeLevel = '0'";
		$res = mysql_query($sql);
		$Handle['root'] = mysql_fetch_array($res,MYSQL_ASSOC);
			
			
		//找到需要remove的节点
		for($i=0;$i<count($temple);$i++)
		{
			//找到兄弟节点
			$Begin = $temple[$i];
			while($Begin['NodeLevel'] != '0')
			{
				$sql = "SELECT * FROM `nodeinfo` WHERE AuthorID = '$author' and MindName = '$mind' and ParentID = '{$Begin['ParentID']}' and NodeID <> '{$Begin['NodeID']}'";
				$res = mysql_query($sql);
				$row = mysql_fetch_array($res,MYSQL_ASSOC);
				
				if($row != FALSE)
				{
					$brother[] = $row;
					while($row = mysql_fetch_array($res,MYSQL_ASSOC))
					{
						$brother[]=$row;
					}
					
					for($j=0;$j<count($brother);$j++)
					{
						$Handle['remove'][] = $brother[$j];
						
					}
					
					$sql = "SELECT * FROM `nodeinfo` WHERE AuthorID = '$author' and MindName = '$mind' and NodeID = '{$Begin['ParentID']}'";
					$res = mysql_query($sql);
					$Begin = mysql_fetch_array($res);
				}
			}
		}
		
		//需要add的节点
		for($i=0;$i<count($result);$i++)
		{
			if($result[$i]['NodeID'] == '')
			{
				continue;
			}
			else{
				$Handle['add'][] = $result[$i];			
			}
			
		}
		
		$json = json_encode($Handle);	
		echo $json;
	}
?>