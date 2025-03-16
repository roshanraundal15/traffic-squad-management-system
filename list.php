<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<style>
    .img-avatar{
        width:45px;
        height:45px;
        object-fit:cover;
        object-position:center center;
        border-radius:100%;
    }
</style>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of System Users</h3>
		<div class="card-tools">
			<a href="?page=user/manage_user" class="btn btn-flat btn-primary"><span class="fas fa-plus"></span>  Create New</a>
		</div>
	</div>

	<section class="section product-detail">
    <?php
    // Database connection
    $conn = mysqli_connect('localhost', 'root', '', 'traffic_offense_db');
    
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Query to select all data from the 'challan' table
    $select_query = 'SELECT * FROM challan';
    $result_query = mysqli_query($conn, $select_query);

    // Check if there are records found
    if (mysqli_num_rows($result_query) > 0) {
        // Fetch and display each row
        while ($row = mysqli_fetch_assoc($result_query)) {
            $image1 = htmlspecialchars($row['image1']); // Sanitize image path
            $remark = htmlspecialchars($row['remark']); // Sanitize remark

            echo "
            <div class='details container'>
                <div class='left image-container'>
                    <div class='main'>
                        <img src='C:\sem 5\mini project main\xampp\htdocs\traffic_offense\product_images/$image1' id='zoom' alt='Image not found' />
                    </div>
                    <div class='remark'>
                        <p>$remark</p>
                    </div>
                </div>
            </div>";
        }
    } else {
        echo "<p>No data found.</p>";
    }

    // Close connection
    mysqli_close($conn);
    ?>
    </section>
</div>

<script>
	$(document).ready(function(){
		// Confirmation before deleting a user
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this User permanently?","delete_user",[$(this).attr('data-id')])
		})

		// Initialize DataTable
		$('.table').dataTable();
	})

	// Function to delete user
	function delete_user($id){
		start_loader(); // Start loader
		$.ajax({
			url: _base_url_ + "classes/Users.php?f=delete",
			method: "POST",
			data: {id: $id},
			dataType: "json",
			error: function(err){
				console.log(err);
				alert_toast("An error occurred.", 'error');
				end_loader(); // End loader
			},
			success: function(resp){
				if (typeof resp == 'object' && resp.status == 'success') {
					location.reload();
				} else {
					alert_toast("An error occurred.", 'error');
					end_loader(); // End loader
				}
			}
		})
	}
</script>
