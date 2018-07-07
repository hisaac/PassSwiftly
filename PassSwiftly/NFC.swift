// Created by Isaac Halvorson on 7/7/18

struct NFC {
	/// The payload to be transmitted to the Apple Pay terminal
	let message: String

	/// The public encryption key used by the Value Added Services protocol
	let encryptionPublicKey: String?
}
