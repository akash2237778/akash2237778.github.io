'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "1e5f6e376526dadeded56b5c7f4de340",
"assets/AssetManifest.json": "382cf7209669ebcc9648023630bf06f5",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/bg.jpg": "7d4a690b8896b5e1e94872abc5692432",
"assets/images/github.png": "b8e090c3d4ebf071ebac5f81dafce61c",
"assets/images/linkedin.png": "ca416ccb7f429e3ca15472ff43c32d13",
"assets/images/instagram.png": "4d9222ef3dc56dca622ce4662c62f6d1",
"assets/images/akash.jpg": "0ef66ae2ba659be97b26561c6dcc6ae8",
"assets/LICENSE": "ac3bc3b40c32772e7882a0fcc1b4c144",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"manifest.json": "3e43b5df17bda818b4f7bcbcdc786143",
"icons/Icon-192.jpg": "0ef66ae2ba659be97b26561c6dcc6ae8",
"icons/Icon-512.jpg": "0ef66ae2ba659be97b26561c6dcc6ae8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "8f0adaeaecf1c652813fac73f5f3417b",
"/": "8f0adaeaecf1c652813fac73f5f3417b"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
