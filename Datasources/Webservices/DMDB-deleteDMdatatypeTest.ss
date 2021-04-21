function deleteDMdatatypeTest(){
	var queryStr = "DELETE FROM \"public\".\"DMdatatypeTest\"";
	try{
		$s.query("DMDB", queryStr);
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteDMdatatypeTest();
