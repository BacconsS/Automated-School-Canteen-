<?php include('partials-front/menu.php'); ?>

<?php 
    if(isset($_GET['food_id'])) {
        $food_id = $_GET['food_id'];
        // Query to get the food details
        $sql = "SELECT * FROM tbl_food WHERE id=$food_id";
        $res = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($res);
        
        if($count == 1) {
            // Get the food data
            $row = mysqli_fetch_assoc($res);
            $title = htmlspecialchars($row['title']);
            $price = $row['price'];
            $image_name = $row['image_name'];
        } else {
            // Redirect if food is not available
            header('location:'.SITEURL);
        }
    } else {
        header('location:'.SITEURL);
    }
?>

<section class="food-order">
    <div class="container">
        <h2 class="text-center">Fill this form to confirm your order.</h2>

        <form action="" method="POST" class="order">
            <fieldset>
                <legend>Selected Food</legend>
                <div class="food-menu-img">
                    <?php 
                    if($image_name == "") {
                        echo "<div class='error'>Image not available.</div>";
                    } else {
                        ?>
                        <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="<?php echo htmlspecialchars($title); ?>" class="img-responsive img-curve">
                        <?php
                    }
                    ?>
                </div>
                <div class="food-menu-desc">
                    <h3><?php echo $title; ?></h3>
                    <p class="food-price">₱<?php echo $price; ?></p>

                    <div class="order-label">Quantity</div>
                    <input type="number" name="qty" class="input-responsive" value="1" required>

                    <div class="order-label">Pre-order Time Slot</div>
                    <select name="pre_order_time" class="input-responsive" required>
                        <option value="10:00-10:30">10:00 AM - 10:30 AM</option>
                        <option value="10:30-11:00">10:30 AM - 11:00 AM</option>
                        <option value="11:00-11:30">11:00 AM - 11:30 AM</option>
                        <option value="11:30-12:00">11:30 AM - 12:00 PM</option>
                        <option value="12:00-12:30">12:00 PM - 12:30 PM</option>
                    </select>
                </div>
            </fieldset>

            <fieldset>
                <legend>Delivery Details</legend>
                <div class="order-label">Full Name</div>
                <input type="text" name="full_name" placeholder="Enter Your Name" class="input-responsive" required>

                <div class="order-label">Phone Number</div>
                <input type="tel" name="contact" placeholder="Enter Your Phone Number" class="input-responsive" required>

                <div class="order-label">Email</div>
                <input type="email" name="email" placeholder="Enter Your Email" class="input-responsive" required>

                <input type="submit" name="submit" value="Confirm Order" class="btn btn-primary">
            </fieldset>
        </form>

        <?php
        if(isset($_POST['submit'])) {
            $food = $title;
            $price = $price;
            $qty = $_POST['qty'];
            $total = $price * $qty;
            $order_date = date("Y-m-d h:i:sa"); //Order Date
            $status = "Ordered";  //Ordered, On Delivery, Delivered, Cancelled
            $customer_name = $_POST['full_name'];
            $customer_contact = $_POST['contact'];
            $customer_email = $_POST['email'];
            $pre_order_time = $_POST['pre_order_time'];

            // Save the order in the database
            $sql2 = "INSERT INTO tbl_order SET 
                food='$food',
                price=$price,
                qty=$qty,
                total=$total,
                order_date='$order_date',
                status='$status',
                customer_name='$customer_name',
                customer_contact='$customer_contact',
                customer_email='$customer_email',
                pre_order_time='$pre_order_time'
            ";

            $res2 = mysqli_query($conn, $sql2);

            if($res2 == true) {
                $_SESSION['order'] = "<div class='success text-center'>Food Ordered Successfully.</div>";
                header('location:'.SITEURL);
            } else {
                $_SESSION['order'] = "<div class='error text-center'>Failed to Order Food.</div>";
                header('location:'.SITEURL);
            }
        }
        ?>
    </div>
</section>

<?php include('partials-front/footer.php'); ?>
