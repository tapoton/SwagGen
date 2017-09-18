//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Pagination: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The total number of pages available given the current page size.

A value of -1 indicates that the total has not yet been determined. This may
arise when embedding secure list pagination info in a page which must be cached
by a CDN. For example a Bookmarks list.
 */
    public var total: Int

    /** The current page number.

A value of 0 indicates that the fist page has not yet been loaded. This is
useful when wanting to return the paging metadata to indicate how to
load in the first page.
 */
    public var page: Int

    /** The authorization requirements to load a page of items.

This will only be present on lists which are protected by some form
of authorization token e.g. Bookmarks, Watched, Entitlements.
 */
    public var authorization: PaginationAuth?

    /** Path to load next page of data, or null if not available */
    public var next: String?

    /** Any active list sort and filter options.

If an option has a default value then it won't be defined.
 */
    public var options: PaginationOptions?

    /** Path to load previous page of data, or null if not available. */
    public var previous: String?

    /** The current page size.

A value of -1 indicates that the size has not yet been determined. This may
arise when embedding secure list pagination info in a page which must be cached
by a CDN. For example a Bookmarks list.
 */
    public var size: Int?

    public init(total: Int, page: Int, authorization: PaginationAuth? = nil, next: String? = nil, options: PaginationOptions? = nil, previous: String? = nil, size: Int? = nil) {
        self.total = total
        self.page = page
        self.authorization = authorization
        self.next = next
        self.options = options
        self.previous = previous
        self.size = size
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        total = try jsonDictionary.json(atKeyPath: "total")
        page = try jsonDictionary.json(atKeyPath: "page")
        authorization = jsonDictionary.json(atKeyPath: "authorization")
        next = jsonDictionary.json(atKeyPath: "next")
        options = jsonDictionary.json(atKeyPath: "options")
        previous = jsonDictionary.json(atKeyPath: "previous")
        size = jsonDictionary.json(atKeyPath: "size")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["total"] = total
        dictionary["page"] = page
        if let authorization = authorization?.encode() {
            dictionary["authorization"] = authorization
        }
        if let next = next {
            dictionary["next"] = next
        }
        if let options = options?.encode() {
            dictionary["options"] = options
        }
        if let previous = previous {
            dictionary["previous"] = previous
        }
        if let size = size {
            dictionary["size"] = size
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}