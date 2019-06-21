# FormAPI::PDFApi

All URIs are relative to *https://api.formapi.io/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_generate_pdf_v1**](PDFApi.md#batch_generate_pdf_v1) | **POST** /templates/{template_id}/submissions/batch | Generates multiple PDFs
[**batch_generate_pdfs**](PDFApi.md#batch_generate_pdfs) | **POST** /submissions/batches | Generates multiple PDFs
[**combine_pdfs**](PDFApi.md#combine_pdfs) | **POST** /combined_submissions?v&#x3D;2 | Merge submission PDFs, template PDFs, or custom files
[**combine_submissions**](PDFApi.md#combine_submissions) | **POST** /combined_submissions | Merge generated PDFs together
[**create_custom_file_from_upload**](PDFApi.md#create_custom_file_from_upload) | **POST** /custom_files | Create a new custom file from a cached presign upload
[**create_data_request_token**](PDFApi.md#create_data_request_token) | **POST** /data_requests/{data_request_id}/tokens | Creates a new data request token for form authentication
[**create_template**](PDFApi.md#create_template) | **POST** /templates | Upload a new PDF template with a file upload
[**create_template_from_upload**](PDFApi.md#create_template_from_upload) | **POST** /templates?v&#x3D;2 | Create a new PDF template from a cached presign upload
[**expire_combined_submission**](PDFApi.md#expire_combined_submission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
[**expire_submission**](PDFApi.md#expire_submission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
[**generate_pdf**](PDFApi.md#generate_pdf) | **POST** /templates/{template_id}/submissions | Generates a new PDF
[**get_combined_submission**](PDFApi.md#get_combined_submission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
[**get_data_request**](PDFApi.md#get_data_request) | **GET** /data_requests/{data_request_id} | Look up a submission data request
[**get_presign_url**](PDFApi.md#get_presign_url) | **GET** /uploads/presign | Get a presigned URL so that you can upload a file to our AWS S3 bucket
[**get_submission**](PDFApi.md#get_submission) | **GET** /submissions/{submission_id} | Check the status of a PDF
[**get_submission_batch**](PDFApi.md#get_submission_batch) | **GET** /submissions/batches/{submission_batch_id} | Check the status of a submission batch job
[**get_template**](PDFApi.md#get_template) | **GET** /templates/{template_id} | Check the status of an uploaded template
[**get_template_schema**](PDFApi.md#get_template_schema) | **GET** /templates/{template_id}/schema | Fetch the JSON schema for a template
[**list_templates**](PDFApi.md#list_templates) | **GET** /templates | Get a list of all templates
[**test_authentication**](PDFApi.md#test_authentication) | **GET** /authentication | Test Authentication
[**update_data_request**](PDFApi.md#update_data_request) | **PUT** /data_requests/{data_request_id} | Update a submission data request


# **batch_generate_pdf_v1**
> Array&lt;CreateSubmissionResponse&gt; batch_generate_pdf_v1(template_id, request_body)

Generates multiple PDFs

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_id = 'tpl_000000000000000001' # String | 
request_body = nil # Array<Object> | 

begin
  #Generates multiple PDFs
  result = api_instance.batch_generate_pdf_v1(template_id, request_body)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->batch_generate_pdf_v1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 
 **request_body** | [**Array&lt;Object&gt;**](Array.md)|  | 

### Return type

[**Array&lt;CreateSubmissionResponse&gt;**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_generate_pdfs**
> CreateSubmissionBatchResponse batch_generate_pdfs(submission_batch_data)

Generates multiple PDFs

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
submission_batch_data = FormAPI::SubmissionBatchData.new # SubmissionBatchData | 

begin
  #Generates multiple PDFs
  result = api_instance.batch_generate_pdfs(submission_batch_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->batch_generate_pdfs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_batch_data** | [**SubmissionBatchData**](SubmissionBatchData.md)|  | 

### Return type

[**CreateSubmissionBatchResponse**](CreateSubmissionBatchResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **combine_pdfs**
> CreateCombinedSubmissionResponse combine_pdfs(combine_pdfs_data)

Merge submission PDFs, template PDFs, or custom files

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
combine_pdfs_data = FormAPI::CombinePdfsData.new # CombinePdfsData | 

begin
  #Merge submission PDFs, template PDFs, or custom files
  result = api_instance.combine_pdfs(combine_pdfs_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->combine_pdfs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combine_pdfs_data** | [**CombinePdfsData**](CombinePdfsData.md)|  | 

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **combine_submissions**
> CreateCombinedSubmissionResponse combine_submissions(combined_submission_data)

Merge generated PDFs together

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
combined_submission_data = FormAPI::CombinedSubmissionData.new # CombinedSubmissionData | 

begin
  #Merge generated PDFs together
  result = api_instance.combine_submissions(combined_submission_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->combine_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_data** | [**CombinedSubmissionData**](CombinedSubmissionData.md)|  | 

### Return type

[**CreateCombinedSubmissionResponse**](CreateCombinedSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_custom_file_from_upload**
> CreateCustomFileResponse create_custom_file_from_upload(create_custom_file_data)

Create a new custom file from a cached presign upload

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
create_custom_file_data = FormAPI::CreateCustomFileData.new # CreateCustomFileData | 

begin
  #Create a new custom file from a cached presign upload
  result = api_instance.create_custom_file_from_upload(create_custom_file_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->create_custom_file_from_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_custom_file_data** | [**CreateCustomFileData**](CreateCustomFileData.md)|  | 

### Return type

[**CreateCustomFileResponse**](CreateCustomFileResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_data_request_token**
> CreateSubmissionDataRequestTokenResponse create_data_request_token(data_request_id)

Creates a new data request token for form authentication

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
data_request_id = 'drq_000000000000000001' # String | 

begin
  #Creates a new data request token for form authentication
  result = api_instance.create_data_request_token(data_request_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->create_data_request_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **String**|  | 

### Return type

[**CreateSubmissionDataRequestTokenResponse**](CreateSubmissionDataRequestTokenResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_template**
> PendingTemplate create_template(template_document, template_name)

Upload a new PDF template with a file upload

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_document = File.new('/path/to/file') # File | 
template_name = 'template_name_example' # String | 

begin
  #Upload a new PDF template with a file upload
  result = api_instance.create_template(template_document, template_name)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->create_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_document** | **File**|  | 
 **template_name** | **String**|  | 

### Return type

[**PendingTemplate**](PendingTemplate.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_template_from_upload**
> PendingTemplate create_template_from_upload(create_template_data)

Create a new PDF template from a cached presign upload

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
create_template_data = FormAPI::CreateTemplateData.new # CreateTemplateData | 

begin
  #Create a new PDF template from a cached presign upload
  result = api_instance.create_template_from_upload(create_template_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->create_template_from_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_template_data** | [**CreateTemplateData**](CreateTemplateData.md)|  | 

### Return type

[**PendingTemplate**](PendingTemplate.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expire_combined_submission**
> CombinedSubmission expire_combined_submission(combined_submission_id)

Expire a combined submission

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
combined_submission_id = 'com_000000000000000001' # String | 

begin
  #Expire a combined submission
  result = api_instance.expire_combined_submission(combined_submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->expire_combined_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **String**|  | 

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expire_submission**
> Submission expire_submission(submission_id)

Expire a PDF submission

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
submission_id = 'sub_000000000000000001' # String | 

begin
  #Expire a PDF submission
  result = api_instance.expire_submission(submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->expire_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **String**|  | 

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_pdf**
> CreateSubmissionResponse generate_pdf(template_id, submission_data)

Generates a new PDF

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_id = 'tpl_000000000000000001' # String | 
submission_data = FormAPI::SubmissionData.new # SubmissionData | 

begin
  #Generates a new PDF
  result = api_instance.generate_pdf(template_id, submission_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->generate_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 
 **submission_data** | [**SubmissionData**](SubmissionData.md)|  | 

### Return type

[**CreateSubmissionResponse**](CreateSubmissionResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_combined_submission**
> CombinedSubmission get_combined_submission(combined_submission_id)

Check the status of a combined submission (merged PDFs)

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
combined_submission_id = 'com_000000000000000001' # String | 

begin
  #Check the status of a combined submission (merged PDFs)
  result = api_instance.get_combined_submission(combined_submission_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_combined_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **combined_submission_id** | **String**|  | 

### Return type

[**CombinedSubmission**](CombinedSubmission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_data_request**
> SubmissionDataRequest get_data_request(data_request_id)

Look up a submission data request

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
data_request_id = 'drq_000000000000000001' # String | 

begin
  #Look up a submission data request
  result = api_instance.get_data_request(data_request_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_data_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **String**|  | 

### Return type

[**SubmissionDataRequest**](SubmissionDataRequest.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_presign_url**
> Hash&lt;String, Object&gt; get_presign_url

Get a presigned URL so that you can upload a file to our AWS S3 bucket

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

begin
  #Get a presigned URL so that you can upload a file to our AWS S3 bucket
  result = api_instance.get_presign_url
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_presign_url: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_submission**
> Submission get_submission(submission_id, opts)

Check the status of a PDF

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
submission_id = 'sub_000000000000000001' # String | 
opts = {
  include_data: false # BOOLEAN | 
}

begin
  #Check the status of a PDF
  result = api_instance.get_submission(submission_id, opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **String**|  | 
 **include_data** | **BOOLEAN**|  | [optional] 

### Return type

[**Submission**](Submission.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_submission_batch**
> SubmissionBatch get_submission_batch(submission_batch_id, opts)

Check the status of a submission batch job

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
submission_batch_id = 'sbb_000000000000000001' # String | 
opts = {
  include_submissions: true # BOOLEAN | 
}

begin
  #Check the status of a submission batch job
  result = api_instance.get_submission_batch(submission_batch_id, opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_submission_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_batch_id** | **String**|  | 
 **include_submissions** | **BOOLEAN**|  | [optional] 

### Return type

[**SubmissionBatch**](SubmissionBatch.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_template**
> Template get_template(template_id)

Check the status of an uploaded template

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_id = 'tpl_000000000000000001' # String | 

begin
  #Check the status of an uploaded template
  result = api_instance.get_template(template_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 

### Return type

[**Template**](Template.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_template_schema**
> Hash&lt;String, Object&gt; get_template_schema(template_id)

Fetch the JSON schema for a template

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
template_id = 'tpl_000000000000000001' # String | 

begin
  #Fetch the JSON schema for a template
  result = api_instance.get_template_schema(template_id)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->get_template_schema: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**|  | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_templates**
> Array&lt;Template&gt; list_templates(opts)

Get a list of all templates

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
opts = {
  query: '2', # String | Search By Name
  page: 2, # Integer | Default: 1
  per_page: 1 # Integer | Default: 50
}

begin
  #Get a list of all templates
  result = api_instance.list_templates(opts)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->list_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search By Name | [optional] 
 **page** | **Integer**| Default: 1 | [optional] 
 **per_page** | **Integer**| Default: 50 | [optional] 

### Return type

[**Array&lt;Template&gt;**](Template.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **test_authentication**
> AuthenticationSuccessResponse test_authentication

Test Authentication

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new

begin
  #Test Authentication
  result = api_instance.test_authentication
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->test_authentication: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthenticationSuccessResponse**](AuthenticationSuccessResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_data_request**
> UpdateDataRequestResponse update_data_request(data_request_id, update_submission_data_request_data)

Update a submission data request

### Example
```ruby
# load the gem
require 'form_api'
# setup authorization
FormAPI.configure do |config|
  # Configure HTTP basic authorization: api_token_basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = FormAPI::PDFApi.new
data_request_id = 'drq_000000000000000001' # String | 
update_submission_data_request_data = FormAPI::UpdateSubmissionDataRequestData.new # UpdateSubmissionDataRequestData | 

begin
  #Update a submission data request
  result = api_instance.update_data_request(data_request_id, update_submission_data_request_data)
  p result
rescue FormAPI::ApiError => e
  puts "Exception when calling PDFApi->update_data_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_request_id** | **String**|  | 
 **update_submission_data_request_data** | [**UpdateSubmissionDataRequestData**](UpdateSubmissionDataRequestData.md)|  | 

### Return type

[**UpdateDataRequestResponse**](UpdateDataRequestResponse.md)

### Authorization

[api_token_basic](../README.md#api_token_basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



