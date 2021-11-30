<html>
<head>
<script  type="text/javascript" src="js/jquery.min.js"></script>
<style>
.button{
	display:block;
	border-style:solid;
	border-color:#bbb #888 #666 #aaa;
	border-width:3px 4px 4px 3px;
	width:9em;
	height:2em;
	background:#ccc;
	color:#333;
	line-height:2;
	text-align:center;
	text-decoration:none;
	font-weight:900;
}
</style>
</head>
<body>
<h2>SKU ids</h2>
<table>
  <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="A" name="A"
					id="A" onclick="addSoftwares(this);"/></td>
    <td>A</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="B" name="B"
					id="B" onclick="addSoftwares(this);"/></td>
    <td>B</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="C" name="C"
					id="C" onclick="addSoftwares(this);"/></td>
    <td>C</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
    <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
      <tr>
    <td><input type="checkbox" value="D" name="D"
					id="D" onclick="addSoftwares(this);"/></td>
    <td>D</td>
  </tr>
</table>
<div  id="mybutton" class="button" onClick="submit();">
Proceed to next
</div>
<div  id="total">

</div>
</body>
</html>
<script>
var jq = jQuery.noConflict();
function submit(){
	try{
		var skuArray = []
		var checkboxes = document.querySelectorAll('input[type=checkbox]:checked')

		for (var i = 0; i < checkboxes.length; i++) {
			skuArray.push(checkboxes[i].value)
		}
//		alert(skuArray);
		  var url="PromotionController/applyPromo?&SKUids="+skuArray;
		  
		   jq.ajax({
	           url: url,
	           type: 'POST',
	           complete: function(response){
	        	   alert( response.responseText);
	           },
	           error: function(response){
	               alert( response.responseText);
	           }
	    });
	}catch(e){
		alert(e.message);
	}

}
</script>
