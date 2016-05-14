Backend for Town Improvements Tracker
===

Authorization
---

```sh
curl -X POST -vu clientapp:123456 http://localhost:8080/oauth/token -H "Accept: application/json" -d "password=password&username=johndoe&grant_type=password&scope=read%20write&client_secret=123456&client_id=clientapp"
```

API requests for authorized users
---

```sh
curl http://localhost:8080/tickets/1 -H "Authorization: Bearer 4da04eb2-d6f8-4e90-8711-0d0d83777e39"
```
