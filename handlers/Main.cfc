component extends="coldbox.system.EventHandler" {

	/**
	 * Default Action
	 */
	function index( event, rc, prc ){
		prc.welcomeMessage = "Welcome to ColdBox!";
		event.setView( "main/index" );
	}

	function arden( event, rc, prc ){
		prc[ "links" ] = queryExecute( "SELECT * FROM sitemap s ORDER By s.url LIMIT 10" );

		event.setview( "main/arden" );
	}

	function arden2( event, rc, prc ){
		var q = queryExecute(
			"SELECT * FROM sitemap s ORDER By s.url LIMIT 100",
			[],
			{ returnType : "array" }
		);
		prc[ "jsonData" ][ "links" ] = q;

		event.setview( "main/arden2" );
	}

	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit( event, rc, prc ){
	}

	function onRequestStart( event, rc, prc ){
	}

	function onRequestEnd( event, rc, prc ){
	}

	function onSessionStart( event, rc, prc ){
	}

	function onSessionEnd( event, rc, prc ){
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ){
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}

}
