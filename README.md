# valorant.gathering.org

## For development

You need npm installed. 

Commands needed to start dev-building:

```
npm install -D tailwindcss
npx tailwindcss -i ./src/main.css -o ./dist/main.css --watch 
```

## For production

Use provided Docker image. GitHub Actions auto-builds new image on push to repo.