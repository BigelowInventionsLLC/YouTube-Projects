const printGameList = ( jsonData ) => {

	console.log( 'Game List:' );

	for( let game of jsonData.games ){

		console.log( game.title );

	}

}

fetch( 'games.json' )
	.then( ( response ) => {

		if( response.status === 404 ){

			throw 'File not found.'; // Returns string
			//throw new Error( 'File not found.' ); // Creates and returns error object

		}

		return response.json();

	})
	.then( ( data ) => {

		printGameList( data );

	})
	.catch( ( error ) => {

		console.log( error ); // Print error string
		//console.log( `${error.name}: ${error.message}` ); // Print contents of error object

	});