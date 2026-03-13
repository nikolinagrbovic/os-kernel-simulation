# OS Kernel Simulation

Implementation of a simplified operating system kernel developed as part of the **Operating Systems** course at the Faculty of Electrical Engineering, University of Belgrade.

The project demonstrates low-level operating system mechanisms including thread scheduling, synchronization primitives, and interrupt handling.

---

## Overview

This project simulates core components of an operating system kernel.
It supports thread management, synchronization using semaphores, and interrupt-driven execution.

The system includes a timer interrupt routine and supports asynchronous events handled through the interrupt mechanism.

---

## Features

* thread creation and management
* context switching between threads
* cooperative and preemptive scheduling
* semaphores for synchronization
* timer interrupt routine
* asynchronous interrupt handling
* system calls between user and kernel space

---

## Technologies

* **C++**
* **x86 assembly**
* low-level system programming
* interrupt routines

---

## Project Structure

src – kernel implementation
h – header files
lib – supporting libraries
test – test programs for kernel functionality

kernel.asm – assembly routines for interrupt handling
kernel.ld – linker configuration
Makefile – build configuration

---

## Purpose

This project was developed as a university assignment and demonstrates fundamental operating system concepts such as scheduling, synchronization, and interrupt-driven execution.
