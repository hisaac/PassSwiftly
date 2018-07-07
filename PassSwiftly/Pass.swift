// Created by Isaac Halvorson on 7/6/18

// https://developer.apple.com/library/archive/documentation/UserExperience/Reference/PassKit_Bundle/Chapters/Introduction.html

struct Pass {
	// MARK: - Standard Keys

	/// Brief description of the pass, used by the iOS accessibility technologies.
	let description: String

	/// Version of the file format. The value must be 1.
	let formatVersion: Int = 1

	/// Display name of the organization that originiated and signed the pass.
	let organizationName: String

	/// Pass type identifier, as issued by Apple. The value must correspond with your signing certificate.
	let passTypeIdentifier: String

	/// Serial number that uniquely identifies the pass. No two passes with the same pass type identifier may have the same serial number.
	let serialNumber: String

	/// Team identifier of th eoranization that originated and signed the pass, as issued by Apple.
	let teamIdentifier: String

	// MARK: - Associated App Keys

	/// A URL to be passed to the associated app when launching it.
	let appLaunchURL: String?

	/// A list of iTunes Store item identifiers for the associated apps.
	let associatedStoreIdentifiers: [Int]?

	// MARK: - Companion App Keys

	/// Custom information for companion apps. This data is not displayed to the user.
	let userInfo: Codable?

	// MARK: - Expiration Keys

	/// Date and time when the pass expires
	let expirationDate: Date?

	/// Indicates that the pass is void—for example, a one time use coupon that has been redeemed. The default value is `false`.
	let voided: Bool? = false

	// MARK: - Relevance Keys

	/// Beacons marking locations where the pass is relevant.
	let beacons: [Beacon]?

	/// Locations where the pass is relevant.
	let locations: [Location]?

	/// Maximum distance in meters from a relevant latitude and longitude that the pass is relevant.
	let maxDistance: Int?

	/// Date and time when the pass becomes relevant.
	let relevantDate: Date?

	// MARK: - Style Keys

	/// Information specific to a boarding pass
	let boardingPass: [Any]

	/// Information specific to a coupon
	let coupon: [Any]

	/// Information specific to an event ticket
	let eventTicket: [Any]

	/// Information specific to a generic pass
	let generic: [Any]

	/// Information specific to a store card
	let storeCard: [Any]

	// MARK: - Visual Appearance Keys

	/// Information specific to the pass's barcode
	let barcode: Barcode?

	/// Information specific to the pass's barcode
	let barcodes: [Barcode]?

	/// Background color of the pass, specified as an CSS-style RGB triple
	let backgroundColor: String?

	/// Foreground color of the pass, specified as a CSS-style RGB triple
	let foregroundColor: String?

	/// Identifier used to group related passes
	let groupingIdentifier: String?

	/// Color of the label text, specified as a CSS-style RGB triple
	let labelColor: String?

	/// Text displayed next to the logo on the pass
	let logoText: String?

	/// If `true`, the strip image is displayed without a shine effect
	let suppressStripShine: Bool?

	// MARK: - Web Service Keys

	/// The authentication token to use with the web service
	let authenticationToken: String

	/// The URL of a web service that conforms to the API described in [PassKit Web Service Reference](https://developer.apple.com/library/archive/documentation/PassKit/Reference/PassKit_WebService/WebService.html#//apple_ref/doc/uid/TP40011988)
	let webServiceURL: String

	// MARK: - NFC-Enabled Pass Keys

	/// Information used for Value Added Service Protocol transactions
	let nfc: NFC?
}
