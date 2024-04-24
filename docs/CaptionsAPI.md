# CaptionsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](CaptionsAPI.md#postvideosvideoidcaptionslanguage) | **POST** /videos/{videoId}/captions/{language} | Upload a caption
[**get**](CaptionsAPI.md#getvideosvideoidcaptionslanguage) | **GET** /videos/{videoId}/captions/{language} | Retrieve a caption
[**update**](CaptionsAPI.md#patchvideosvideoidcaptionslanguage) | **PATCH** /videos/{videoId}/captions/{language} | Update a caption
[**delete**](CaptionsAPI.md#deletevideosvideoidcaptionslanguage) | **DELETE** /videos/{videoId}/captions/{language} | Delete a caption
[**list**](CaptionsAPI.md#getvideosvideoidcaptions) | **GET** /videos/{videoId}/captions | List video captions


# **upload**
```swift
    open class func upload(videoId: String, language: String, file: URL, completion: @escaping (_ data: Caption?, _ error: Error?) -> Void)
    open class func upload(videoId: String, language: String, file: URL, completion: @escaping (_ result: Swift.Result<Response<Caption>, ErrorResponse>) -> Void)
```

Upload a caption

Upload a VTT file to add captions to your video. More information can be found [here](https://docs.api.video/vod/add-captions)


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to add a caption to.
let language = "language_example" // String | A valid language identifier using IETF language tags. You can use primary subtags like `en` (English), extended subtags like `fr-CA` (French, Canada), or region subtags like `zh-Hans-CN` (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example `fr-CA`. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags).
let file = URL(string: "https://example.com")! // URL | The video text track (VTT) you want to upload.

// Upload a caption
CaptionsAPI.upload(videoId: videoId, language: language, file: file) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **String** | The unique identifier for the video you want to add a caption to. | 
 **language** | **String** | A valid language identifier using IETF language tags. You can use primary subtags like &#x60;en&#x60; (English), extended subtags like &#x60;fr-CA&#x60; (French, Canada), or region subtags like &#x60;zh-Hans-CN&#x60; (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example &#x60;fr-CA&#x60;. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags). | 
 **file** | **URL** | The video text track (VTT) you want to upload. | 

### Return type

[**Caption**](Caption.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(videoId: String, language: String, completion: @escaping (_ data: Caption?, _ error: Error?) -> Void)
    open class func get(videoId: String, language: String, completion: @escaping (_ result: Swift.Result<Response<Caption>, ErrorResponse>) -> Void)
```

Retrieve a caption

Retrieve a caption for a video in a specific language. If the language is available, the caption is returned. Otherwise, you will get a error indicating the caption was not found.

Tutorials that use the [captions endpoint](https://api.video/blog/endpoints/captions).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want captions for.
let language = "language_example" // String | A valid language identifier using IETF language tags. You can use primary subtags like `en` (English), extended subtags like `fr-CA` (French, Canada), or region subtags like `zh-Hans-CN` (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example `fr-CA`. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags).

// Retrieve a caption
CaptionsAPI.get(videoId: videoId, language: language) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **String** | The unique identifier for the video you want captions for. | 
 **language** | **String** | A valid language identifier using IETF language tags. You can use primary subtags like &#x60;en&#x60; (English), extended subtags like &#x60;fr-CA&#x60; (French, Canada), or region subtags like &#x60;zh-Hans-CN&#x60; (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example &#x60;fr-CA&#x60;. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags). | 

### Return type

[**Caption**](Caption.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(videoId: String, language: String, captionsUpdatePayload: CaptionsUpdatePayload, completion: @escaping (_ data: Caption?, _ error: Error?) -> Void)
    open class func update(videoId: String, language: String, captionsUpdatePayload: CaptionsUpdatePayload, completion: @escaping (_ result: Swift.Result<Response<Caption>, ErrorResponse>) -> Void)
```

Update a caption

To have the captions on automatically, use this method to set default: true.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to have automatic captions for.
let language = "language_example" // String | A valid language identifier using IETF language tags. You can use primary subtags like `en` (English), extended subtags like `fr-CA` (French, Canada), or region subtags like `zh-Hans-CN` (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example `fr-CA`. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags).
let captionsUpdatePayload = CaptionsUpdatePayload(_default: false) // CaptionsUpdatePayload | 

// Update a caption
CaptionsAPI.update(videoId: videoId, language: language, captionsUpdatePayload: captionsUpdatePayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **String** | The unique identifier for the video you want to have automatic captions for. | 
 **language** | **String** | A valid language identifier using IETF language tags. You can use primary subtags like &#x60;en&#x60; (English), extended subtags like &#x60;fr-CA&#x60; (French, Canada), or region subtags like &#x60;zh-Hans-CN&#x60; (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example &#x60;fr-CA&#x60;. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags). | 
 **captionsUpdatePayload** | [**CaptionsUpdatePayload**](CaptionsUpdatePayload.md) |  | 

### Return type

[**Caption**](Caption.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(videoId: String, language: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
    open class func delete(videoId: String, language: String, completion: @escaping (_ result: Swift.Result<Response<Void>, ErrorResponse>) -> Void)
```

Delete a caption

Delete a caption in a specific language by by video id.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to delete a caption from.
let language = "language_example" // String | A valid language identifier using IETF language tags. You can use primary subtags like `en` (English), extended subtags like `fr-CA` (French, Canada), or region subtags like `zh-Hans-CN` (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example `fr-CA`. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags).

// Delete a caption
CaptionsAPI.delete(videoId: videoId, language: language) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **String** | The unique identifier for the video you want to delete a caption from. | 
 **language** | **String** | A valid language identifier using IETF language tags. You can use primary subtags like &#x60;en&#x60; (English), extended subtags like &#x60;fr-CA&#x60; (French, Canada), or region subtags like &#x60;zh-Hans-CN&#x60; (Simplified Chinese used in the PRC).  - This parameter **only accepts dashes for separators**, for example &#x60;fr-CA&#x60;. If you use a different separator in your request, the API returns an error. - When the value in your request does not match any covered language, the API returns an error. - You can find the list of supported tags [here](https://docs.api.video/vod/add-captions#supported-caption-language-tags). | 

### Return type

Void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: CaptionsListResponse?, _ error: Error?) -> Void)
    open class func list(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ result: Swift.Result<Response<CaptionsListResponse>, ErrorResponse>) -> Void)
```

List video captions

Retrieve a list of available captions by video id.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to retrieve a list of captions for.
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List video captions
CaptionsAPI.list(videoId: videoId, currentPage: currentPage, pageSize: pageSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **String** | The unique identifier for the video you want to retrieve a list of captions for. | 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**CaptionsListResponse**](CaptionsListResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

