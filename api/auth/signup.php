<?php
    include "../connect.php";
    $username = filterRequest("username");
    $email = filterRequest("email");
    $phone = filterRequest("phone");
    $password = filterRequest("password");
    $verfiycode = rand(1000, 99999999);

    $stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? OR user_phone = ?");
    $stmt->execute(array($email, $phone));
    $count = $stmt->rowCount();
    if ($count > 0) {
        echo json_encode(array("state" => "failure"));
    }
    else{
        $data = array(
            "user_name" => $username,
            "user_email" => $email,
            "user_phone" => $phone,
            "user_password" => $password,
            "user_verfiycode" => $verfiycode,
        );
        sendEmail($email, "Verfiy Code Shop App", "Verfiy Code $veverfiycoder");
        insertData(
            "users",
            $data
        );
    }
