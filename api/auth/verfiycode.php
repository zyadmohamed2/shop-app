<?php
    include "../connect.php";
    $email = filterRequest("email");
    $verfiycode = filterRequest("verfiycode");
    $stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_verfiycode = ?");
    $stmt->execute(array($email, $verfiycode));
    $count = $stmt->rowCount();
    if ($count > 0) {
        $data = array("user_approve" => "1");
        updateData("users", $data, "user_email = $email");
    }
    else{
        echo json_encode(array("state" => "VerfiyCode not Correct"));
    }
?>