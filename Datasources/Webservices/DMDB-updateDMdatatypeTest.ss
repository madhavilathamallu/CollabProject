function updateDMdatatypeTest(){
	var queryStr = "UPDATE \"public\".\"DMdatatypeTest\" SET \"name\"=?,\"dob\"=?,\"Citizenship\"=?,\"age\"=?,\"status\"=?,\"Rating\"=?";
	try{
		$s.query("DMDB", queryStr);
	$s.setString(1, "name");
	$s.setDate(2, "dob");
	$s.setObject(3, "Citizenship");
	$s.setBigDecimal(4, "age");
	$s.setString(5, "status");
	$s.setBigDecimal(6, "Rating");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateDMdatatypeTest();
