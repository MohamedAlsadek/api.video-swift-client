//
// VideoCreationPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoCreationPayload: Codable, Hashable {

    public enum Language: String, Codable, CaseIterable {
        case ar = "ar"
        case ca = "ca"
        case cs = "cs"
        case da = "da"
        case de = "de"
        case el = "el"
        case en = "en"
        case es = "es"
        case fa = "fa"
        case fi = "fi"
        case fr = "fr"
        case he = "he"
        case hi = "hi"
        case hr = "hr"
        case hu = "hu"
        case it = "it"
        case ja = "ja"
        case ko = "ko"
        case ml = "ml"
        case nl = "nl"
        case nn = "nn"
        case _false = "false"
        case pl = "pl"
        case pt = "pt"
        case ru = "ru"
        case sk = "sk"
        case sl = "sl"
        case te = "te"
        case tr = "tr"
        case uk = "uk"
        case ur = "ur"
        case vi = "vi"
        case zh = "zh"
    }
    /** The title of your new video. */
    public var title: String
    /** A brief description of your video. */
    public var description: String?
    /** You can either add a video already on the web, by entering the URL of the video, or you can also enter the `videoId` of one of the videos you already have on your api.video acccount, and this will generate a copy of your video. Creating a copy of a video can be especially useful if you want to keep your original video and trim or apply a watermark onto the copy you would create. */
    public var source: String?
    /** Default: True. If set to `false` the video will become private. More information on private videos can be found [here](https://docs.api.video/delivery/video-privacy-access-management) */
    public var _public: Bool? = true
    /** Indicates if your video is a 360/immersive video. */
    public var panoramic: Bool? = false
    /** Enables mp4 version in addition to streamed version. */
    public var mp4Support: Bool? = true
    /** The unique identification number for your video player. */
    public var playerId: String?
    /** A list of tags you want to use to describe your video. */
    public var tags: [String]?
    /** A list of key value pairs that you use to provide metadata for your video. */
    public var metadata: [Metadata]?
    public var clip: VideoClip?
    public var watermark: VideoWatermark?
    /** Use this parameter to set the language of the video. When this parameter is set, the API creates a transcript of the video using the language you specify. You must use the [IETF language tag](https://en.wikipedia.org/wiki/IETF_language_tag) format.  `language` is a permanent attribute of the video. You can update it to another language using the [`PATCH /videos/{videoId}`](https://docs.api.video/reference/api/Videos#update-a-video-object) operation. This triggers the API to generate a new transcript using a different language. */
    public var language: Language?
    /** Use this parameter to enable transcription.   - When `true`, the API generates a transcript for the video. - The default value is `false`. - If you define a video language using the `language` parameter, the API uses that language to transcribe the video. If you do not define a language, the API detects it based on the video.  - When the API generates a transcript, it will be available as a caption for the video. */
    public var transcript: Bool?

    public init(title: String, description: String? = nil, source: String? = nil, _public: Bool? = true, panoramic: Bool? = false, mp4Support: Bool? = true, playerId: String? = nil, tags: [String]? = nil, metadata: [Metadata]? = nil, clip: VideoClip? = nil, watermark: VideoWatermark? = nil, language: Language? = nil, transcript: Bool? = nil) {
        self.title = title
        self.description = description
        self.source = source
        self._public = _public
        self.panoramic = panoramic
        self.mp4Support = mp4Support
        self.playerId = playerId
        self.tags = tags
        self.metadata = metadata
        self.clip = clip
        self.watermark = watermark
        self.language = language
        self.transcript = transcript
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
        case source
        case _public = "public"
        case panoramic
        case mp4Support
        case playerId
        case tags
        case metadata
        case clip
        case watermark
        case language
        case transcript
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(_public, forKey: ._public)
        try container.encodeIfPresent(panoramic, forKey: .panoramic)
        try container.encodeIfPresent(mp4Support, forKey: .mp4Support)
        try container.encodeIfPresent(playerId, forKey: .playerId)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(clip, forKey: .clip)
        try container.encodeIfPresent(watermark, forKey: .watermark)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(transcript, forKey: .transcript)
    }
}

