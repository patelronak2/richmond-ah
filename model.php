<?php

/*
    This method retrieves all the document from the database of a particular category.
*/
function getDocuments($conn, $category_id){
    $stmt = null;
    try {
        $stmt = $conn->prepare("SELECT document_name FROM lu_documents WHERE doc_catId=?");
        $stmt->execute([$category_id]);
        return $stmt->fetchAll();
    }catch(PDOException $e) {
        // Error handling
        // errorlog.txt is populated with a sample to demonstrate how the logging will work
        $error = array();
		$error['date'] = date("F j, Y, g:i a");
		$error['sql'] = "SELECT document_name FROM lu_documents WHERE doc_catId=$category_id";
		$error['mysqlerror'] = $e->getMessage();
		$error['fileName'] = __FILE__;
		$error['lineNumber'] = $e->getLine();
		$error['remoteHost'] = gethostbyaddr($_SERVER['REMOTE_ADDR']);
		$error['clientAddress'] = $_SERVER['REMOTE_ADDR'];
		error_log(print_r($error,true),3,"errorlog.txt");
		exit();
  }
	
}