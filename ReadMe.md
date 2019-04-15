# Dog breed detector (front-end)
This is the front end code for the dog breed detector app. The app allows you to send a photo of a dog and it will detect what breed it is and return the result.

## Getting started
The front-end is a static html file and static assets in the `static` folder that can be served by any server of your choice. Clone the repo and serve `index.html` after reading below on how to connect to the desired backend address. You should be aware that if you choose to serve the static files from a different server to where the backend is hosted, you may run into [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) issues.

### Serving the static files.
#### Option 1 -- hardcoding the backend address
If you know which backend server you want to send the images to, the most staright-forward option is to hardcode the address into the `sendImage` function in `index.html` Replace `REPLACE_DETECTOR_ADDRESS` with the address of the desired backend and serve. For example, you can use [serve](https://github.com/zeit/serve#readme)

#### Option 2 -- using NGINX with included `nginx.conf`
The included configuration file `nginx.conf` expects to find the backend address in the enviornment variable `DETECTOR_ADDRESS`. It will then serve the `index.html` file with the address replaced.
