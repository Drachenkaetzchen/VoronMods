$fn=30;
holeCoordX = 56.54;
holeCoordY = 42.95;
zOffset = 1.6;
zHeight = 6;
difference() {
import("DisplayMount.stl");

translate([holeCoordX,holeCoordY,zOffset]) {
cylinder(d=4.8,h=zHeight);
}
translate([-holeCoordX,holeCoordY,zOffset]) {
cylinder(d=4.8,h=zHeight);
}
translate([holeCoordX,-holeCoordY,zOffset]) {
cylinder(d=4.8,h=zHeight);
}
translate([-holeCoordX,-holeCoordY,zOffset]) {
cylinder(d=4.8,h=zHeight);
}
}