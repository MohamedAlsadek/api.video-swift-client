# AnalyticsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLiveStreamsPlays**](AnalyticsAPI.md#getanalyticslivestreamsplays) | **GET** /analytics/live-streams/plays | Get play events for live stream
[**getVideosPlays**](AnalyticsAPI.md#getanalyticsvideosplays) | **GET** /analytics/videos/plays | Get play events for video


# **getLiveStreamsPlays**
```swift
    open class func getLiveStreamsPlays(from: Date, dimension: Dimension_getLiveStreamsPlays, to: Date? = nil, filter: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: AnalyticsPlaysResponse?, _ error: Error?) -> Void)
    open class func getLiveStreamsPlays(from: Date, dimension: Dimension_getLiveStreamsPlays, to: Date? = nil, filter: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ result: Swift.Result<Response<AnalyticsPlaysResponse>, ErrorResponse>) -> Void)
```

Get play events for live stream

Retrieve filtered analytics about the number of plays for your live streams in a project.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let from = Date() // Date | Use this query parameter to set the start date for the time period that you want analytics for. - The API returns analytics data including the day you set in `from`. - The date you set must be **within the last 30 days**. - The value you provide must follow the `YYYY-MM-DD` format. 
let dimension = "dimension_example" // String | Use this query parameter to define the dimension that you want analytics for. - `liveStreamId`: Returns analytics based on the public live stream identifiers. - `emittedAt`: Returns analytics based on the times of the play events. The API returns data in specific interval groups. When the date period you set in `from` and `to` is less than or equals to 2 days, the response for this dimension is grouped in hourly intervals. Otherwise, it is grouped in daily intervals. - `country`: Returns analytics based on the viewers' country. The list of supported country names are based on the [GeoNames public database](https://www.geonames.org/countries/). - `deviceType`: Returns analytics based on the type of device used by the viewers during the play event. Possible response values are: `computer`, `phone`, `tablet`, `tv`, `console`, `wearable`, `unknown`. - `operatingSystem`: Returns analytics based on the operating system used by the viewers during the play event. Response values include `windows`, `mac osx`, `android`, `ios`, `linux`. - `browser`: Returns analytics based on the browser used by the viewers during the play event. Response values include `chrome`, `firefox`, `edge`, `opera`.
let to = Date() // Date | Use this optional query parameter to set the end date for the time period that you want analytics for. - If you do not specify a `to` date, the API returns analytics data starting from the `from` date up until today, and excluding today. - The date you set must be **within the last 30 days**. - The value you provide must follow the `YYYY-MM-DD` format.  (optional)
let filter = "filter_example" // String | Use this query parameter to filter your results to a specific live stream in a project that you want analytics for. You must use the `liveStreamId:` prefix when specifying a live stream ID. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// Get play events for live stream
AnalyticsAPI.getLiveStreamsPlays(from: from, dimension: dimension, to: to, filter: filter, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **from** | **Date** | Use this query parameter to set the start date for the time period that you want analytics for. - The API returns analytics data including the day you set in &#x60;from&#x60;. - The date you set must be **within the last 30 days**. - The value you provide must follow the &#x60;YYYY-MM-DD&#x60; format.  | 
 **dimension** | **String** | Use this query parameter to define the dimension that you want analytics for. - &#x60;liveStreamId&#x60;: Returns analytics based on the public live stream identifiers. - &#x60;emittedAt&#x60;: Returns analytics based on the times of the play events. The API returns data in specific interval groups. When the date period you set in &#x60;from&#x60; and &#x60;to&#x60; is less than or equals to 2 days, the response for this dimension is grouped in hourly intervals. Otherwise, it is grouped in daily intervals. - &#x60;country&#x60;: Returns analytics based on the viewers&#39; country. The list of supported country names are based on the [GeoNames public database](https://www.geonames.org/countries/). - &#x60;deviceType&#x60;: Returns analytics based on the type of device used by the viewers during the play event. Possible response values are: &#x60;computer&#x60;, &#x60;phone&#x60;, &#x60;tablet&#x60;, &#x60;tv&#x60;, &#x60;console&#x60;, &#x60;wearable&#x60;, &#x60;unknown&#x60;. - &#x60;operatingSystem&#x60;: Returns analytics based on the operating system used by the viewers during the play event. Response values include &#x60;windows&#x60;, &#x60;mac osx&#x60;, &#x60;android&#x60;, &#x60;ios&#x60;, &#x60;linux&#x60;. - &#x60;browser&#x60;: Returns analytics based on the browser used by the viewers during the play event. Response values include &#x60;chrome&#x60;, &#x60;firefox&#x60;, &#x60;edge&#x60;, &#x60;opera&#x60;. | 
 **to** | **Date** | Use this optional query parameter to set the end date for the time period that you want analytics for. - If you do not specify a &#x60;to&#x60; date, the API returns analytics data starting from the &#x60;from&#x60; date up until today, and excluding today. - The date you set must be **within the last 30 days**. - The value you provide must follow the &#x60;YYYY-MM-DD&#x60; format.  | [optional] 
 **filter** | **String** | Use this query parameter to filter your results to a specific live stream in a project that you want analytics for. You must use the &#x60;liveStreamId:&#x60; prefix when specifying a live stream ID. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**AnalyticsPlaysResponse**](AnalyticsPlaysResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideosPlays**
```swift
    open class func getVideosPlays(from: Date, dimension: Dimension_getVideosPlays, to: Date? = nil, filter: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: AnalyticsPlaysResponse?, _ error: Error?) -> Void)
    open class func getVideosPlays(from: Date, dimension: Dimension_getVideosPlays, to: Date? = nil, filter: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ result: Swift.Result<Response<AnalyticsPlaysResponse>, ErrorResponse>) -> Void)
```

Get play events for video

Retrieve filtered analytics about the number of plays for your videos in a project.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let from = Date() // Date | Use this query parameter to set the start date for the time period that you want analytics for. - The API returns analytics data including the day you set in `from`. - The date you set must be **within the last 30 days**. - The value you provide must follow the `YYYY-MM-DD` format. 
let dimension = "dimension_example" // String | Use this query parameter to define the dimension that you want analytics for. - `videoId`: Returns analytics based on the public video identifiers. - `emittedAt`: Returns analytics based on the times of the play events. The API returns data in specific interval groups. When the date period you set in `from` and `to` is less than or equals to 2 days, the response for this dimension is grouped in hourly intervals. Otherwise, it is grouped in daily intervals. - `country`: Returns analytics based on the viewers' country. The list of supported country names are based on the [GeoNames public database](https://www.geonames.org/countries/). - `deviceType`: Returns analytics based on the type of device used by the viewers during the play event. Possible response values are: `computer`, `phone`, `tablet`, `tv`, `console`, `wearable`, `unknown`. - `operatingSystem`: Returns analytics based on the operating system used by the viewers during the play event. Response values include `windows`, `mac osx`, `android`, `ios`, `linux`. - `browser`: Returns analytics based on the browser used by the viewers during the play event. Response values include `chrome`, `firefox`, `edge`, `opera`.
let to = Date() // Date | Use this optional query parameter to set the end date for the time period that you want analytics for. - If you do not specify a `to` date, the API returns analytics data starting from the `from` date up until today, and excluding today. - The date you set must be **within the last 30 days**. - The value you provide must follow the `YYYY-MM-DD` format.  (optional)
let filter = "filter_example" // String | Use this query parameter to filter your results to a specific video in a project that you want analytics for. You must use the `videoId:` prefix when specifying a video ID. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// Get play events for video
AnalyticsAPI.getVideosPlays(from: from, dimension: dimension, to: to, filter: filter, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **from** | **Date** | Use this query parameter to set the start date for the time period that you want analytics for. - The API returns analytics data including the day you set in &#x60;from&#x60;. - The date you set must be **within the last 30 days**. - The value you provide must follow the &#x60;YYYY-MM-DD&#x60; format.  | 
 **dimension** | **String** | Use this query parameter to define the dimension that you want analytics for. - &#x60;videoId&#x60;: Returns analytics based on the public video identifiers. - &#x60;emittedAt&#x60;: Returns analytics based on the times of the play events. The API returns data in specific interval groups. When the date period you set in &#x60;from&#x60; and &#x60;to&#x60; is less than or equals to 2 days, the response for this dimension is grouped in hourly intervals. Otherwise, it is grouped in daily intervals. - &#x60;country&#x60;: Returns analytics based on the viewers&#39; country. The list of supported country names are based on the [GeoNames public database](https://www.geonames.org/countries/). - &#x60;deviceType&#x60;: Returns analytics based on the type of device used by the viewers during the play event. Possible response values are: &#x60;computer&#x60;, &#x60;phone&#x60;, &#x60;tablet&#x60;, &#x60;tv&#x60;, &#x60;console&#x60;, &#x60;wearable&#x60;, &#x60;unknown&#x60;. - &#x60;operatingSystem&#x60;: Returns analytics based on the operating system used by the viewers during the play event. Response values include &#x60;windows&#x60;, &#x60;mac osx&#x60;, &#x60;android&#x60;, &#x60;ios&#x60;, &#x60;linux&#x60;. - &#x60;browser&#x60;: Returns analytics based on the browser used by the viewers during the play event. Response values include &#x60;chrome&#x60;, &#x60;firefox&#x60;, &#x60;edge&#x60;, &#x60;opera&#x60;. | 
 **to** | **Date** | Use this optional query parameter to set the end date for the time period that you want analytics for. - If you do not specify a &#x60;to&#x60; date, the API returns analytics data starting from the &#x60;from&#x60; date up until today, and excluding today. - The date you set must be **within the last 30 days**. - The value you provide must follow the &#x60;YYYY-MM-DD&#x60; format.  | [optional] 
 **filter** | **String** | Use this query parameter to filter your results to a specific video in a project that you want analytics for. You must use the &#x60;videoId:&#x60; prefix when specifying a video ID. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**AnalyticsPlaysResponse**](AnalyticsPlaysResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

