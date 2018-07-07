// Created by Isaac Halvorson on 7/7/18

struct Beacon {
	/// Major identifier of a Bluetooth Low Energy location beacon.
	let major: UInt16?

	/// Minor identifier of a Bluetooth Low Energy location beacon.
	let minor: UInt16?

	/// Unique identifier of a Bluetooth Low Energy location beacon.
	let proximityUUID: String

	/// Text displayed on the lock screen when the pass is currently relevant.
	let relevantText: String?
}
