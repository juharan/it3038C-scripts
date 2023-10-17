#To explore images with Pillow, start by opening the image that you  downloaded and apply the following:

>>> from PIL import Image
>>> filename = "buildings.jpg"
>>> with Image.open(filename) as img:
...     img.load()
...

>>> type(img)
<class 'PIL.JpegImagePlugin.JpegImageFile'>

>>> isinstance(img, Image.Image)
True
