# JG.Blog
  - Deploy my own blog by using ghost image in docker.
# Installation
  - install docker.
  - create `.env` file
  ```
  DB_USER=
DB_PASSWORD=
DB_NAME=
GHOST_URL=
  ```
  - `docker-compose up -d --build`

# setup
  ### ghost theme for dev
  - install ghost
  - `ghost install local`
  - `ghost start`
  - open cmd.exe with admin permission
  - `mklink /D "D:\project\JG.Blog\local\content\themes\testlink" "D:\project\JG.Blog\custom\RubyJG"`

  ### Add code highlight ```
  - setting -> code injection -> site header
  ```
  <script src="https://cdn.jsdelivr.net/npm/prismjs/prism.min.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs/plugins/autoloader/prism-autoloader.min.js" defer></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs/themes/prism.min.css">

  ```

  ### Add font
  ```
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<style>
span.post-card-tags {
 /* font-family: Monsterrat, sans-serif; */
  font-family: "Geist", sans-serif;
  font-optical-sizing: auto;
  font-weight: <weight>;
  font-style: normal;
}
</style>
```
