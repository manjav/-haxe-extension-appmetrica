extension-appmetrica
=============

Simple OpenFL/Haxe extension for <b>App Metrica</b> install attribution, app analytics and marketing platform.

Install 
`haxelib git extension-appmetrica https://github.com/manjav/haxe-extension-appmetrica`

Add to `project.xml`:

```xml
<haxelib name="extension-appmetrica" if="android" />
```

And import into your project (haxe) with:
  
```Haxe
import com.gerantech.extension.appmetrica.Appmetrica;
```

Appmetrica.init("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"); 
```