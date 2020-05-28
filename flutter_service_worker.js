'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "5b355b646555deffe86b872b847aa5fe",
"assets/AssetManifest.json": "a1377e51ff1ecb6d7e36d36a98cc8b97",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/AR.jpg": "f1c9db6d5761087ad6bf1e2d65005a67",
"assets/images/bg.jpg": "7d4a690b8896b5e1e94872abc5692432",
"assets/images/github.png": "b8e090c3d4ebf071ebac5f81dafce61c",
"assets/images/linkedin.png": "ca416ccb7f429e3ca15472ff43c32d13",
"assets/images/instagram.png": "4d9222ef3dc56dca622ce4662c62f6d1",
"assets/images/akash.jpg": "0ef66ae2ba659be97b26561c6dcc6ae8",
"assets/images/logomain.png": "ab96f0ca0ed5e066576af34d80333919",
"assets/LICENSE": "997c6caa0c0e433058cc7d864b04eede",
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
