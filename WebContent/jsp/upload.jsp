<style>
#file
{

width: 500px
}
.button {

	padding: 15px 25px;
	font-size: 20px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: gray;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #999;
	}

.button:hover {
	background-color: green;
}

.button:active {
	background-color: #00ffff;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
<div class="container">
<form class="form-horizontal" enctype="multipart/form-data" method="post" action="/e-fashion/Upload">

  <div class="form-group" style="margin-left: 10%" id="" >
  
  <div class="input-group col-xs-6 container-fluid">
				<span class="input-group-addon"><i
					class="fa fa-user-o"></i></span> <input id="file"
					type="file" class="btn btn-info" name="upload"
					required="required">
			</div>
			
      </div><br>
      <br><br>
      
    
    <button class="button col-xs-2" type="submit" id="submitu" style="margin-left: 45%">UPLOAD</button>
    
 
</form>

</div>