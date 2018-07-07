// Created by Isaac Halvorson on 7/7/18

struct Location {
	/// Altitude, in meters, of the location.
	let altitude: Double?

	/// Latitude, in degrees, of the location.
	let latitude: Double

	/// Longitude, in degrees, of the location.
	let longitude: Double

	/// Text displayed on the lock screen when the pass is currently relevant.
	let relevantText: String?
}
