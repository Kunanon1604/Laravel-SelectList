<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Mainpage</title>
<style>
	.point{
		text-align: center;
	}
	.item{
		display: flex; 
		justify-content: center; 
		flex-direction: column; 
		align-items: center;
	}
</style>
</head>
<body>

	<div class="container">
		<h2 class="point"><b>Laravel Select/List + Jquery</b></h2><br>

		<div class="row">
		<div class="item">
		<!--Province-->
		<div class="col-md-6">
		<label>จังหวัด: </label>
		<select class="form-control" id="province">
			<option value="">-เลือกจังหวัด-</option>
			@foreach($province as $key => $data)
			<option value="{{ $data->province_id }}">{{ $data->province_name }}</option>
			@endforeach
		</select>
		</div>
		<!--Province-->
		<br><br>

		<!--District-->
		<div class="col-md-6">
		<label>อำเภอ: </label>
		<select class="form-control" id="district">
			<option disabled selected>กรุณาเลือกจังหวัดก่อน..</option>
		</select>
		</div>
		<!--District-->
		<br><br>

		<!--SubDistrict-->
		<div class="col-md-6">
		<label>ตำบล: </label>
		<select class="form-control" id="subdistrict">
			<option disabled selected>กรุณาเลือกอำเภอก่อน..</option>
		</select>
		</div>
		<!--SubDistrict-->
		<br><br>

		<!--Postcode-->
		<div class="col-md-6">
		<label>รหัสไปรษณีย์: </label>
		<input type="text" id="postcode" class="form-control" placeholder="รหัสไปรษณีย์">
		</div>
		<!--Postcode-->
		</div>
		</div>
	</div>	
</body>
</html>
<script>
	$('#province').change(function(){
		var province_id = this.value;
		if(province_id != ''){
			$.ajax({
            url: "{{ route('get_district') }}",
            method: "post",
            data: {
              province_id:province_id,
              "_token": "{{ csrf_token() }}", 
            },
            success:function(data)
            {	
            	if(data == ''){
            		alert('ไม่พบข้อมูลอำเภอ !!.');
            	}else{
	        		var layout = '<option value="" selected>- เลือกเขต -</option>';
	                $.each(data,function(key,value){
	                	layout += '<option value='+value.district_id+'x'+value.postcode+'>'+value.district_name+'</option>';
	                });
	                $('#district').html(layout);
	                $('#postcode').val('');
	                $('#subdistrict').html('');
            	}
            }
          })
		}
	});

	$('#district').change(function(){
		var str = this.value.split("x");
		var district_id = str[0];
		var postcode = str[1];

		if(district_id != ''){
			$.ajax({
            url: "{{ route('get_subdistrict') }}",
            method: "post",
            data: {
              district_id:district_id,
              "_token": "{{ csrf_token() }}", 
            },
            success:function(res)
            {	
            	if(res == ''){
            		alert('ไม่พบข้อมูลตำบล !!.');
            	}else{
            		var layout = '<option value="" selected>- เลือกตำบล -</option>';
	                $.each(res,function(key,value){
	                	layout += '<option value='+value.sub_district_id+'>'+value.sub_district_name+'</option>';
	                });
	                $('#subdistrict').html(layout);
	                $('#postcode').val(postcode);
            	}
            }
          })
		}
	});

</script>