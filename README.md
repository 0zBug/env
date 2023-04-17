# env
https://🐛.glitch.me/

```lua
print(env.get("key")) -- nil
env.set("key", "guh")
print(env.get("key")) -- guh
env.delete("key")
print(env.get("key")) -- nil
```
