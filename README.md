# More-NBT-Tags-Datapack
legopitstop/More-NBT-Tags-datapack

## Schema

### How To Install In Visual Studio Code
1. Open VSC. 
2. Go to your settings ( `CTRL` + `,` )
3. At the top corner you should find a button that will open settings (JSON). Click it.
4. Paste the below code into that JSON.
5. Save it. Thats it your done!
```json
{
    "json.schemas": [
        {
            "fileMatch": [
                "*.json"
            ],
            "url": "https://raw.githubusercontent.com/legopitstop/More-NBT-Tags-Datapack/main/draft-01/schema.json"
        }
    ]
}
```

or you can referance the schema directly inside the JSON file.
```json
{"$schema":"https://raw.githubusercontent.com/legopitstop/More-NBT-Tags-Datapack/main/draft-01/schema.json"}
```