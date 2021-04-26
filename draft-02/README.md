# README

This is a schema for MoreNBT tags datapack. This is a way to easly write your custom items, entities, and blocks using this schema.

## INFO
### [What are Schemas?](https://json-schema.org/understanding-json-schema/about.html)
Schemas are JSON files that will help and aid you in creating your code and
will show you any errors that will come up when loading up your mod. A good example
is the Minecraft Bedrock Addon Schemas. If you have that schema installed in VSC it will help
you by suggesting things to be added into the code. It also provides useful tooltips when you hover over the text to tell you what it does.

Join my discord to get live updates on schemas. [Discord](https://discord.gg/JbyTHWW)

### Screenshots

![img](https://cdn.discordapp.com/attachments/786714100205092915/789987247830335508/image.png "Schemas provide useful tool tips to better understand what parameters do what.")

![img](https://cdn.discordapp.com/attachments/786714100205092915/789987365791727646/image_1.png "It suggests parameters as you type.")

![img](https://cdn.discordapp.com/attachments/786714100205092915/789987943900512306/image_2.png "Alerts you if its missing a required bit of code.")

## How to Install *Visual Studio Code*
1. Open VSC. 
2. Go to your settings ( `CTRL` + `,` )
3. At the top corner you should find a button that will open settings (JSON). Click it.
4. Paste the below code into that JSON.
5. Save it. Thats it your done!

## SCHEMA
```json
{
    "json.schemas": [
        {
            "name": "NBT Tags Datapack Schema",
            "description": "Schema for legopitstop's More NBT Tags datapack.",
            "fileMatch": [
                "*.nbt.json",
                "*.nbt.jsonc"
            ],
            "url": "https://raw.githubusercontent.com/legopitstop/More-NBT-Tags-Datapack/main/draft-02/schema.json"
        }
    ]
}
```
## How to use.
- Create a file called `<what ever you want>.nbt.json`
- If you added the text to your settings JSON inside VSC you should now be using the schema, note that the code does not work in JSON files, but this is easier to create your item compared to typing it in a MCFUNCTION file.
