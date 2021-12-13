[![badge](https://img.shields.io/twitter/follow/api_video?style=social)](https://twitter.com/intent/follow?screen_name=api_video) &nbsp; [![badge](https://img.shields.io/github/stars/apivideo/api.video-ios-client?style=social)]() &nbsp; [![badge](https://img.shields.io/discourse/topics?server=https%3A%2F%2Fcommunity.api.video)](https://community.api.video)
![](https://github.com/apivideo/API_OAS_file/blob/master/apivideo_banner.png)
<h1 align="center">api.video iOS client</h1>

[api.video](https://api.video) is the video infrastructure for product builders. Lightning fast video APIs for integrating, scaling, and managing on-demand & low latency live streaming features in your app.

# Table of contents

- [Project description](#project-description)
- [Getting started](#getting-started)
  - [Installation](#installation)
    - [Carthage](#carthage)
    - [CocoaPods](#cocoaPods)
  - [Code sample](#code-sample)
- [Documentation](#documentation)
  - [API Endpoints](#api-endpoints)
    - [CaptionsAPI](#CaptionsAPI)
    - [ChaptersAPI](#ChaptersAPI)
    - [LiveStreamsAPI](#LiveStreamsAPI)
    - [PlayerThemesAPI](#PlayerThemesAPI)
    - [RawStatisticsAPI](#RawStatisticsAPI)
    - [UploadTokensAPI](#UploadTokensAPI)
    - [VideosAPI](#VideosAPI)
    - [WebhooksAPI](#WebhooksAPI)
  - [Models](#models)
  - [Authorization](#documentation-for-authorization)
    - [API token](#api-token)
    - [Public endpoints](#public-endpoints)
- [Have you gotten use from this API client?](#have-you-gotten-use-from-this-api-client)
- [Contribution](#contribution)

# Project description
api.video's iOS client streamlines the coding process. Chunking files is handled for you, as is pagination and refreshing your tokens.

# Getting started

## Installation

### Carthage

Specify it in your `Cartfile`:

```
github "apivideo/api.video-ios-client" ~> 0.1.0
```

Run `carthage update`

### CocoaPods

Add `pod 'ApiVideoClient', '0.1.0'` in your `Podfile`

Run `pod install`

## Code sample

Please follow the [installation](#installation) instruction and execute the following Swift code:
```swift
import ApiVideoClient

    ApiVideoClient.apiKey = "YOUR_API_TOKEN"
    // if you rather like to use the sandbox environment:
    // ApiVideoClient.basePath = Environment.sandbox.rawValue

    let url = URL(string: "My video.mov")

    VideosAPI.create(videoCreationPayload: VideoCreationPayload(title: "my video")) { video, error in
    if let video = video {
        VideosAPI.upload(videoId: video.videoId,
                         file: url) { video, error in
            if let video = video {
                // Manage upload success here
            }
            if let error = error {
                // Manage upload error here
            }
        }
    }
    if let error = error {
       // Manage create error here
    }
}
```

# Documentation

## API Endpoints

All URIs are relative to *https://ws.api.video*


### CaptionsAPI

#### Retrieve an instance of CaptionsAPI:

```swift
CaptionsAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/CaptionsAPI.md#delete) | **DELETE** /videos/{videoId}/captions/{language} | Delete a caption
[**list**](docs/CaptionsAPI.md#list) | **GET** /videos/{videoId}/captions | List video captions
[**get**](docs/CaptionsAPI.md#get) | **GET** /videos/{videoId}/captions/{language} | Show a caption
[**update**](docs/CaptionsAPI.md#update) | **PATCH** /videos/{videoId}/captions/{language} | Update caption
[**upload**](docs/CaptionsAPI.md#upload) | **POST** /videos/{videoId}/captions/{language} | Upload a caption


### ChaptersAPI

#### Retrieve an instance of ChaptersAPI:

```swift
ChaptersAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/ChaptersAPI.md#delete) | **DELETE** /videos/{videoId}/chapters/{language} | Delete a chapter
[**list**](docs/ChaptersAPI.md#list) | **GET** /videos/{videoId}/chapters | List video chapters
[**get**](docs/ChaptersAPI.md#get) | **GET** /videos/{videoId}/chapters/{language} | Show a chapter
[**upload**](docs/ChaptersAPI.md#upload) | **POST** /videos/{videoId}/chapters/{language} | Upload a chapter


### LiveStreamsAPI

#### Retrieve an instance of LiveStreamsAPI:

```swift
LiveStreamsAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/LiveStreamsAPI.md#delete) | **DELETE** /live-streams/{liveStreamId} | Delete a live stream
[**deleteThumbnail**](docs/LiveStreamsAPI.md#deleteThumbnail) | **DELETE** /live-streams/{liveStreamId}/thumbnail | Delete a thumbnail
[**list**](docs/LiveStreamsAPI.md#list) | **GET** /live-streams | List all live streams
[**get**](docs/LiveStreamsAPI.md#get) | **GET** /live-streams/{liveStreamId} | Show live stream
[**update**](docs/LiveStreamsAPI.md#update) | **PATCH** /live-streams/{liveStreamId} | Update a live stream
[**create**](docs/LiveStreamsAPI.md#create) | **POST** /live-streams | Create live stream
[**uploadThumbnail**](docs/LiveStreamsAPI.md#uploadThumbnail) | **POST** /live-streams/{liveStreamId}/thumbnail | Upload a thumbnail


### PlayerThemesAPI

#### Retrieve an instance of PlayerThemesAPI:

```swift
PlayerThemesAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/PlayerThemesAPI.md#delete) | **DELETE** /players/{playerId} | Delete a player
[**deleteLogo**](docs/PlayerThemesAPI.md#deleteLogo) | **DELETE** /players/{playerId}/logo | Delete logo
[**list**](docs/PlayerThemesAPI.md#list) | **GET** /players | List all player themes
[**get**](docs/PlayerThemesAPI.md#get) | **GET** /players/{playerId} | Show a player
[**update**](docs/PlayerThemesAPI.md#update) | **PATCH** /players/{playerId} | Update a player
[**create**](docs/PlayerThemesAPI.md#create) | **POST** /players | Create a player
[**uploadLogo**](docs/PlayerThemesAPI.md#uploadLogo) | **POST** /players/{playerId}/logo | Upload a logo


### RawStatisticsAPI

#### Retrieve an instance of RawStatisticsAPI:

```swift
RawStatisticsAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLiveStreamSessions**](docs/RawStatisticsAPI.md#listLiveStreamSessions) | **GET** /analytics/live-streams/{liveStreamId} | List live stream player sessions
[**listSessionEvents**](docs/RawStatisticsAPI.md#listSessionEvents) | **GET** /analytics/sessions/{sessionId}/events | List player session events
[**listVideoSessions**](docs/RawStatisticsAPI.md#listVideoSessions) | **GET** /analytics/videos/{videoId} | List video player sessions


### UploadTokensAPI

#### Retrieve an instance of UploadTokensAPI:

```swift
UploadTokensAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteToken**](docs/UploadTokensAPI.md#deleteToken) | **DELETE** /upload-tokens/{uploadToken} | Delete an upload token
[**list**](docs/UploadTokensAPI.md#list) | **GET** /upload-tokens | List all active upload tokens.
[**getToken**](docs/UploadTokensAPI.md#getToken) | **GET** /upload-tokens/{uploadToken} | Show upload token
[**createToken**](docs/UploadTokensAPI.md#createToken) | **POST** /upload-tokens | Generate an upload token


### VideosAPI

#### Retrieve an instance of VideosAPI:

```swift
VideosAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/VideosAPI.md#delete) | **DELETE** /videos/{videoId} | Delete a video
[**get**](docs/VideosAPI.md#get) | **GET** /videos/{videoId} | Show a video
[**getStatus**](docs/VideosAPI.md#getStatus) | **GET** /videos/{videoId}/status | Show video status
[**list**](docs/VideosAPI.md#list) | **GET** /videos | List all videos
[**update**](docs/VideosAPI.md#update) | **PATCH** /videos/{videoId} | Update a video
[**pickThumbnail**](docs/VideosAPI.md#pickThumbnail) | **PATCH** /videos/{videoId}/thumbnail | Pick a thumbnail
[**uploadWithUploadToken**](docs/VideosAPI.md#uploadWithUploadToken) | **POST** /upload | Upload with an upload token
[**create**](docs/VideosAPI.md#create) | **POST** /videos | Create a video
[**upload**](docs/VideosAPI.md#upload) | **POST** /videos/{videoId}/source | Upload a video
[**uploadThumbnail**](docs/VideosAPI.md#uploadThumbnail) | **POST** /videos/{videoId}/thumbnail | Upload a thumbnail


### WebhooksAPI

#### Retrieve an instance of WebhooksAPI:

```swift
WebhooksAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](docs/WebhooksAPI.md#delete) | **DELETE** /webhooks/{webhookId} | Delete a Webhook
[**get**](docs/WebhooksAPI.md#get) | **GET** /webhooks/{webhookId} | Show Webhook details
[**list**](docs/WebhooksAPI.md#list) | **GET** /webhooks | List all webhooks
[**create**](docs/WebhooksAPI.md#create) | **POST** /webhooks | Create Webhook



## Models

 - [AccessToken](docs/AccessToken.md)
 - [AuthenticatePayload](docs/AuthenticatePayload.md)
 - [BadRequest](docs/BadRequest.md)
 - [BytesRange](docs/BytesRange.md)
 - [Caption](docs/Caption.md)
 - [CaptionsListResponse](docs/CaptionsListResponse.md)
 - [CaptionsUpdatePayload](docs/CaptionsUpdatePayload.md)
 - [Chapter](docs/Chapter.md)
 - [ChaptersListResponse](docs/ChaptersListResponse.md)
 - [Link](docs/Link.md)
 - [LiveStream](docs/LiveStream.md)
 - [LiveStreamAssets](docs/LiveStreamAssets.md)
 - [LiveStreamCreationPayload](docs/LiveStreamCreationPayload.md)
 - [LiveStreamListResponse](docs/LiveStreamListResponse.md)
 - [LiveStreamSession](docs/LiveStreamSession.md)
 - [LiveStreamSessionClient](docs/LiveStreamSessionClient.md)
 - [LiveStreamSessionDevice](docs/LiveStreamSessionDevice.md)
 - [LiveStreamSessionLocation](docs/LiveStreamSessionLocation.md)
 - [LiveStreamSessionReferrer](docs/LiveStreamSessionReferrer.md)
 - [LiveStreamSessionSession](docs/LiveStreamSessionSession.md)
 - [LiveStreamUpdatePayload](docs/LiveStreamUpdatePayload.md)
 - [Metadata](docs/Metadata.md)
 - [NotFound](docs/NotFound.md)
 - [Pagination](docs/Pagination.md)
 - [PaginationLink](docs/PaginationLink.md)
 - [PlayerSessionEvent](docs/PlayerSessionEvent.md)
 - [PlayerTheme](docs/PlayerTheme.md)
 - [PlayerThemeAssets](docs/PlayerThemeAssets.md)
 - [PlayerThemeCreationPayload](docs/PlayerThemeCreationPayload.md)
 - [PlayerThemeUpdatePayload](docs/PlayerThemeUpdatePayload.md)
 - [PlayerThemesListResponse](docs/PlayerThemesListResponse.md)
 - [Quality](docs/Quality.md)
 - [RawStatisticsListLiveStreamAnalyticsResponse](docs/RawStatisticsListLiveStreamAnalyticsResponse.md)
 - [RawStatisticsListPlayerSessionEventsResponse](docs/RawStatisticsListPlayerSessionEventsResponse.md)
 - [RawStatisticsListSessionsResponse](docs/RawStatisticsListSessionsResponse.md)
 - [RefreshTokenPayload](docs/RefreshTokenPayload.md)
 - [TokenCreationPayload](docs/TokenCreationPayload.md)
 - [TokenListResponse](docs/TokenListResponse.md)
 - [UploadToken](docs/UploadToken.md)
 - [Video](docs/Video.md)
 - [VideoAssets](docs/VideoAssets.md)
 - [VideoCreationPayload](docs/VideoCreationPayload.md)
 - [VideoSession](docs/VideoSession.md)
 - [VideoSessionClient](docs/VideoSessionClient.md)
 - [VideoSessionDevice](docs/VideoSessionDevice.md)
 - [VideoSessionLocation](docs/VideoSessionLocation.md)
 - [VideoSessionOs](docs/VideoSessionOs.md)
 - [VideoSessionReferrer](docs/VideoSessionReferrer.md)
 - [VideoSessionSession](docs/VideoSessionSession.md)
 - [VideoSource](docs/VideoSource.md)
 - [VideoSourceLiveStream](docs/VideoSourceLiveStream.md)
 - [VideoSourceLiveStreamLink](docs/VideoSourceLiveStreamLink.md)
 - [VideoStatus](docs/VideoStatus.md)
 - [VideoStatusEncoding](docs/VideoStatusEncoding.md)
 - [VideoStatusEncodingMetadata](docs/VideoStatusEncodingMetadata.md)
 - [VideoStatusIngest](docs/VideoStatusIngest.md)
 - [VideoThumbnailPickPayload](docs/VideoThumbnailPickPayload.md)
 - [VideoUpdatePayload](docs/VideoUpdatePayload.md)
 - [VideosListResponse](docs/VideosListResponse.md)
 - [Webhook](docs/Webhook.md)
 - [WebhooksCreationPayload](docs/WebhooksCreationPayload.md)
 - [WebhooksListResponse](docs/WebhooksListResponse.md)


## Documentation for Authorization

### API token

Most endpoints required to be authenticated using the API token mechanism described in our [documentation](https://docs.api.video/reference#authentication).
The access token generation mechanism is automatically handled by the client. All you have to do is provide an API token:
```swift
ApiVideoClient.apiKey = YOUR_API_TOKEN
```

### Public endpoints

Some endpoints don't require authentication. These one can be called without setting `ApiVideoClient.apiKey`:

## Have you gotten use from this API client?

Please take a moment to leave a star on the client ⭐

This helps other users to find the clients and also helps us understand which clients are most popular. Thank you!

# Contribution

Since this API client is generated from an OpenAPI description, we cannot accept pull requests made directly to the repository. If you want to contribute, you can open a pull request on the repository of our [client generator](https://github.com/apivideo/api-client-generator). Otherwise, you can also simply open an issue detailing your need on this repository.
