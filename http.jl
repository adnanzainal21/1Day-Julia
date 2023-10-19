
using HTTP
using WebSockets

# make a GET request, both forms are equivalent
resp = HTTP.request("GET", "http://httpbin.org/ip")
resp = HTTP.get("http://httpbin.org/ip")
println(resp.status)
println(String(resp.body))

