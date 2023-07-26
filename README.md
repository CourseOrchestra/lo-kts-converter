# Libre Office Kotlin Script Converter

This script allows to convert Open Document Flat XML format (`fodt`) files to `odt`, `pdf` and `docx` formats. 

It has minimum functions and almost no error handling because as a script can be easily tailored to convert in a required way any Open Document files or, in fact, any file that can be opened by [LibreOffice](https://www.libreoffice.org/). 

During conversion process this very script updates all indexes (Table of Contents, Figure index, Table index etc.) and converts input document simultaneously to all specified formats. You can easily remove this logic or inject your own processing routine in the conversion process.

To run the script you need just [LibreOffice](https://www.libreoffice.org/), [Java](https://www.java.com/ru/) and [Kotlin](https://kotlinlang.org/). You may also precompile the script and run it without Kotlin.

There are numerous ways to run Kotlin scripts.

Most straightforward way to convert file `my-writer-doc.odt` to pdf and docx formats is:

```
kotlin lo-kts-converter.main.kts -i my-writer-doc.odt -f pdf,docx 
```

Or on Linux simply:

```
./lo-kts-converter.main.kts -i my-writer-doc.odt -f pdf,docx 
```

To precompile script in a fat `jar` use [kscript project](https://github.com/kscripting/kscript):

```
kscript --package lo-kts-converter.main.kts
```

The compiled `jar` doesn't need Kotlin to run and will start much faster since it needs no time to resolve dependencies and to compile. 

```
java -jar lo-kts-converter.main.jar -i my-writer-doc.odt -f pdf,docx 
```

The project was created as a part of [Asciidoctor to Open Document converter](https://github.com/CourseOrchestra/asciidoctor-open-document) to render and convert Open Document Flat XML format (fodt) files to odt, pdf and docx formats.

It was stored in a separate repository as we often use it on its own.

Many thanks to [Dr. Andrew Davison](https://github.com/flywire), the author of [LibreOffice Programming](https://flywire.github.io/lo-p/) project for the general approach and code snippets, which are heavily borrowed in this script.

Please note that [here](https://python-ooo-dev-tools.readthedocs.io/) you may find [Python](https://www.python.org/) implementation of general purpose converter.
