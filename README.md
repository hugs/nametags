# Name tags
Customizable, 3D printable, LEGO-compatible names tags!

<span>
    ![Name tag](http://hugs.github.io/img/jason-openscad.png)
</span>

##Dependencies
- [OpenSCAD](http://www.openscad.org/)
- A [3D printer](https://www.lulzbot.com/)

##Getting Started

1. [Download](https://github.com/hugs/nametags/archive/master.zip) or [clone](https://help.github.com/articles/cloning-a-repository/) this project.
2. Install the font Allerta Stencil on your computer. You can find it in the [font folder](https://github.com/hugs/nametags/tree/master/font/Allerta_Stencil), but it's also available from [Google Fonts](https://www.google.com/fonts/specimen/Allerta+Stencil).
3. Open [nametag.scad](https://github.com/hugs/nametags/blob/master/nametag.scad) in [OpenSCAD](http://www.openscad.org/).
4. Change the string on [line 16](https://github.com/hugs/nametags/blob/master/nametag.scad#L16) to whatever name you want! (**Note**: If it's a really long name, you might need to change lines [11](https://github.com/hugs/nametags/blob/master/nametag.scad#L11) and [18](https://github.com/hugs/nametags/blob/master/nametag.scad#L18) to make the name tag wider.
5. In OpenSCAD, from the Design menu, select "Preview". Then select "Render".
6. In OpenSCAD, from the File menu, select "Export->Export as STL..."
7. Save the STL file wherever you want.
8. Use your favorite [slicing program](https://www.lulzbot.com/cura) to convert the STL into a G-code file.
9. Send the G-code file to your 3D printer.
10. 3D print the name tag!
11. Attach it to anything LEGO-y!
12. **Extra credit**: Send me a pull request with your name tag, and I'll add it [here](https://github.com/hugs/nametags/tree/master/tags/stl) for safekeeping. Next time, you can just grab the nametag directly. Use the format "Name.stl" for your file.

##TODO
1. Make this easier to use so that there aren't as many steps and you don't have to edit lines of code. Maybe use [OpenJsCad](http://joostn.github.io/OpenJsCad/)?
2. ???
3. Profit!!!
