<?php

// Check if it's a valid request
if(isset($_POST['action'])){
    include 'database.php';
    include 'model.php';
    
    // Using Switch cases so that new functionality can be added easily
    switch($_POST['action']){
        case 'read':
            $cat_id = $_POST['category_id'];
            $documents = getDocuments($conn,$cat_id);
            // $documents = ["hello", "I am Ronak"];
            echo json_encode($documents);
            break;
        
        // Add new functionality here e.g. delete, update etc.
    }
}else{
    echo 'Bad Request from Client. Use index.html page to make requests';
}