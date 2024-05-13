# Marianne Moore Archive


## Requirements

*   [exist-db](http://exist-db.org/exist/apps/homepage/index.html) version: `5.3` or greater

*   [ant](http://ant.apache.org) version: `1.10.7` \(for building from source\)

### Building from source

1.  Download, fork or clone this GitLab repository  
3.  Build the application by calling `ant`. E.g.:
```bash
cd moore-app
ant
```

If you see `BUILD SUCCESSFUL` ant has generated a `moore-0.1.xar` file in the `build/` folder.
To install it, follow the instructions [below](#installation).

## Installation 

1.  Open the Dashboard of your eXist-db instance and click on `package manager`.

2. Click on the `add package` symbol in the upper left corner and select the `.xar` files you created in the instructions [Building from source](#building-from-source).

3. Open the web application.

## Use the Docker .devcontainer

1. Make sure you have [Visual Studio Code](https://code.visualstudio.com/) and [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed on your local computer.
2. Start `Docker`
3. open this folder in Visual Studio Code which will show you a `Reopen in Container` button once its started. Click this button and wait till everything got installed. Once everything is finished you can access the eXist-db at `localhost:8080/exist`. 

