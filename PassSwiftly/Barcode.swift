// Created by Isaac Halvorson on 7/7/18

struct Barcode {
	/// Text displayed near the barcode
	let altText: String?

	/// Barcode format
	let format: Format

	enum Format {
		case qr
		case pdf417
		case aztec
		case code128
	}

	/// Message or payload to be displayed as a barcode
	let message: String

	/// Text encoding that is used to convert the message from the string representation to a data representation to render the barcode
	let messageEncoding: String
}
