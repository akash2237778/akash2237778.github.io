'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "44ab0ef5ad54e07d798c0552ac42e460",
"assets/AssetManifest.json": "4e8b1dd0b022ca7db813d883df8da1a5",
"assets/FontManifest.json": "04282031f4ab11308f5e7a8d797a1db9",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/IndieFlower-Regular.ttf": "0841af952c807bdf56455b1addb4c7df",
"assets/images/i_am_rich_app_icon.png": "7ee5be83bbadb20fcab98ecd828f68f3",
"assets/images/akash.jpeg": "0ef66ae2ba659be97b26561c6dcc6ae8",
"assets/images/github.png": "b8e090c3d4ebf071ebac5f81dafce61c",
"assets/images/linkedin.png": "ca416ccb7f429e3ca15472ff43c32d13",
"assets/images/instagram.png": "4d9222ef3dc56dca622ce4662c62f6d1",
"assets/LICENSE": "fce0d0627f103411fa9e7a3d28fd9270",
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
