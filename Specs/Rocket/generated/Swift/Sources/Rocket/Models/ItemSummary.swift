//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class ItemSummary: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Unique identifier for an Item */
    public var id: String

    /** The type of item */
    public var type: ItemType

    /** The path to the detail page of this item. Can be used to load the item detail page via the /page endpoint. */
    public var path: String

    /** The display title of the item. */
    public var title: String

    /** The number of available episodes in the season, if the item is a season. */
    public var availableEpisodeCount: Int?

    /** The number of available seasons in the show, if the item is a show. */
    public var availableSeasonCount: Int?

    /** The average user rating. */
    public var averageUserRating: Double?

    /** The badge this item has. */
    public var badge: String?

    /** The classification rating of this item. */
    public var classification: ClassificationSummary?

    /** A contextually relative title to display after a parent title.
Mostly applicable to Season, Episode and Trailer.
 */
    public var contextualTitle: String?

    /** A map of custom fields defined by a curator for an item. */
    public var customFields: [String: Any]?

    /** A custom identifier for this item.
For example the id for this item under a different content system.
 */
    public var customId: String?

    /** The duration of the media in seconds. */
    public var duration: Int?

    /** The number of episodes in the season, if the item is a season. */
    public var episodeCount: Int?

    /** The number of an episode, if the item is an episode. */
    public var episodeNumber: Int?

    /** The array of genres this item belongs to. */
    public var genres: [String]?

    /** Whether closed captioning is available. */
    public var hasClosedCaptions: Bool?

    public var images: [String: URL]?

    /** The array of available offers for this item. */
    public var offers: [Offer]?

    /** The year this item was released */
    public var releaseYear: Int?

    /** The scopes for this item */
    public var scopes: [String]?

    /** The identifier of the season this item belongs to, if the item is an episode. */
    public var seasonId: String?

    /** The number of a season, if the item is a season. */
    public var seasonNumber: Int?

    /** A truncated description of the item */
    public var shortDescription: String?

    /** The identifier of the show this item belongs to, if the item is a season or episode. */
    public var showId: String?

    /** The tagline of the item */
    public var tagline: String?

    /** The path to watch this item, if the item is a watchable type, e.g. a `movie`, `program` and `episode`. */
    public var watchPath: String?

    public init(id: String, type: ItemType, path: String, title: String, availableEpisodeCount: Int? = nil, availableSeasonCount: Int? = nil, averageUserRating: Double? = nil, badge: String? = nil, classification: ClassificationSummary? = nil, contextualTitle: String? = nil, customFields: [String: Any]? = nil, customId: String? = nil, duration: Int? = nil, episodeCount: Int? = nil, episodeNumber: Int? = nil, genres: [String]? = nil, hasClosedCaptions: Bool? = nil, images: [String: URL]? = nil, offers: [Offer]? = nil, releaseYear: Int? = nil, scopes: [String]? = nil, seasonId: String? = nil, seasonNumber: Int? = nil, shortDescription: String? = nil, showId: String? = nil, tagline: String? = nil, watchPath: String? = nil) {
        self.id = id
        self.type = type
        self.path = path
        self.title = title
        self.availableEpisodeCount = availableEpisodeCount
        self.availableSeasonCount = availableSeasonCount
        self.averageUserRating = averageUserRating
        self.badge = badge
        self.classification = classification
        self.contextualTitle = contextualTitle
        self.customFields = customFields
        self.customId = customId
        self.duration = duration
        self.episodeCount = episodeCount
        self.episodeNumber = episodeNumber
        self.genres = genres
        self.hasClosedCaptions = hasClosedCaptions
        self.images = images
        self.offers = offers
        self.releaseYear = releaseYear
        self.scopes = scopes
        self.seasonId = seasonId
        self.seasonNumber = seasonNumber
        self.shortDescription = shortDescription
        self.showId = showId
        self.tagline = tagline
        self.watchPath = watchPath
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        id = try jsonDictionary.json(atKeyPath: "id")
        type = try jsonDictionary.json(atKeyPath: "type")
        path = try jsonDictionary.json(atKeyPath: "path")
        title = try jsonDictionary.json(atKeyPath: "title")
        availableEpisodeCount = jsonDictionary.json(atKeyPath: "availableEpisodeCount")
        availableSeasonCount = jsonDictionary.json(atKeyPath: "availableSeasonCount")
        averageUserRating = jsonDictionary.json(atKeyPath: "averageUserRating")
        badge = jsonDictionary.json(atKeyPath: "badge")
        classification = jsonDictionary.json(atKeyPath: "classification")
        contextualTitle = jsonDictionary.json(atKeyPath: "contextualTitle")
        customFields = jsonDictionary.json(atKeyPath: "customFields")
        customId = jsonDictionary.json(atKeyPath: "customId")
        duration = jsonDictionary.json(atKeyPath: "duration")
        episodeCount = jsonDictionary.json(atKeyPath: "episodeCount")
        episodeNumber = jsonDictionary.json(atKeyPath: "episodeNumber")
        genres = jsonDictionary.json(atKeyPath: "genres")
        hasClosedCaptions = jsonDictionary.json(atKeyPath: "hasClosedCaptions")
        images = jsonDictionary.json(atKeyPath: "images")
        offers = jsonDictionary.json(atKeyPath: "offers")
        releaseYear = jsonDictionary.json(atKeyPath: "releaseYear")
        scopes = jsonDictionary.json(atKeyPath: "scopes")
        seasonId = jsonDictionary.json(atKeyPath: "seasonId")
        seasonNumber = jsonDictionary.json(atKeyPath: "seasonNumber")
        shortDescription = jsonDictionary.json(atKeyPath: "shortDescription")
        showId = jsonDictionary.json(atKeyPath: "showId")
        tagline = jsonDictionary.json(atKeyPath: "tagline")
        watchPath = jsonDictionary.json(atKeyPath: "watchPath")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["id"] = id
        dictionary["type"] = type.encode()
        dictionary["path"] = path
        dictionary["title"] = title
        if let availableEpisodeCount = availableEpisodeCount {
            dictionary["availableEpisodeCount"] = availableEpisodeCount
        }
        if let availableSeasonCount = availableSeasonCount {
            dictionary["availableSeasonCount"] = availableSeasonCount
        }
        if let averageUserRating = averageUserRating {
            dictionary["averageUserRating"] = averageUserRating
        }
        if let badge = badge {
            dictionary["badge"] = badge
        }
        if let classification = classification?.encode() {
            dictionary["classification"] = classification
        }
        if let contextualTitle = contextualTitle {
            dictionary["contextualTitle"] = contextualTitle
        }
        if let customFields = customFields {
            dictionary["customFields"] = customFields
        }
        if let customId = customId {
            dictionary["customId"] = customId
        }
        if let duration = duration {
            dictionary["duration"] = duration
        }
        if let episodeCount = episodeCount {
            dictionary["episodeCount"] = episodeCount
        }
        if let episodeNumber = episodeNumber {
            dictionary["episodeNumber"] = episodeNumber
        }
        if let genres = genres {
            dictionary["genres"] = genres
        }
        if let hasClosedCaptions = hasClosedCaptions {
            dictionary["hasClosedCaptions"] = hasClosedCaptions
        }
        if let images = images?.encode() {
            dictionary["images"] = images
        }
        if let offers = offers?.encode() {
            dictionary["offers"] = offers
        }
        if let releaseYear = releaseYear {
            dictionary["releaseYear"] = releaseYear
        }
        if let scopes = scopes {
            dictionary["scopes"] = scopes
        }
        if let seasonId = seasonId {
            dictionary["seasonId"] = seasonId
        }
        if let seasonNumber = seasonNumber {
            dictionary["seasonNumber"] = seasonNumber
        }
        if let shortDescription = shortDescription {
            dictionary["shortDescription"] = shortDescription
        }
        if let showId = showId {
            dictionary["showId"] = showId
        }
        if let tagline = tagline {
            dictionary["tagline"] = tagline
        }
        if let watchPath = watchPath {
            dictionary["watchPath"] = watchPath
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}