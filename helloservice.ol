type HelloRequest:void {
	.message: string
}

interface HelloInterface {

RequestResponse:
     hello( HelloRequest )( string )
}

execution{ concurrent }


inputPort Hello {
Location: "socket://localhost:8000"
Protocol: http
Interfaces: HelloInterface
}

main {
  hello( request )( response ) {
        response = request.message
  }
}
