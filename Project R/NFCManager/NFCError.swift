//
//  NFCError.swift
//  Project R
//
//  Created by Drew Foster on 4/24/22.
//

import Foundation

public enum NFCError: Error {
    case unavailable
    case notSupported
    case readOnly
    case invalidPayloadSize
    case invalidated(errorDescription: String)
}
