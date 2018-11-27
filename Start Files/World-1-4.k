/*
 * File: World-1-4.k
 * ---------------------------
 * Why so many potholes everywhere? Write a reusable
 * function to make Karel check for potholes
 * autonomously. 
 */
//***KAREL MUST START FACING RIGHT***

import "turns";

function up() {
	turnLeft();
	move();
	turnRight();
}

function right() {
	move();
}

function left() {
	turnAround();
	move();
	turnAround();
}

function down() {
	turnRight();
	move();
	turnLeft();
}

//--------------------------------

function checkFill(){
	down();
	if(noBeepersPresent()){
		putBeeper();
		up();
		right();
	} else {
		up();
		right();
	}
}

function checkFillNoRight(){
	down();
	if(noBeepersPresent()){
		putBeeper();
		up();
	} else {
		up();
	}
}

function checkPotholes() {
	while(frontIsClear()){
		if(rightIsClear()){
			checkFill();
		} else {
			right();
		}
	}
	if(frontIsBlocked()){
	checkFillNoRight();
	}
}

function FixPotHoles(){
	right();
	checkPotholes();
}
