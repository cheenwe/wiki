# 接口文档V1.0
这是接口文档。

## 0 文档说明说明

### 0.1 http status code request code
```
200 OK - The GET, PUT or DELETE request was successful, the resource(s) itself is returned as JSON
201 Created - The POST request was successful and the resource is returned as JSON
400 Bad Request - A required attribute of the API request is missing, e.g. the title of an issue is not given
401 Unauthorized - The user is not authenticated, a valid user token is necessary, see above
403 Forbidden - The request is not allowed, e.g. the user is not allowed to delete a project
404 Not Found - A resource could not be accessed, e.g. an ID for a resource could not be found
405 Method Not Allowed - The request is not supported
409 Conflict - A conflicting resource already exists, e.g. creating a project with a name that already exists
422 Unprocessable - The entity could not be processed
500 Server Error - While handling the request something went wrong on the server side

```