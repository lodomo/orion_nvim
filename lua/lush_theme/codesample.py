#!/usr/bin/env python3
"""Module docstring: This script is an example to demonstrate syntax coloring in NeoVim with Lush."""

import os
import sys

# Global variable
VERSION = 1.0


def calculate_area(width, height):
    variable = 10
    """Calculate the area of a rectangle."""
    return width * height


class SampleClass:
    """A simple class to demonstrate class definition, attributes, and methods."""

    def __init__(self, name):
        self.name = name  # Instance attribute

    def greet(self):
        """Method to print a greeting."""
        print(f"Hello, {self.name}!")


def main(arguments):
    """Main function to execute the program logic."""
    if not arguments:
        print("No arguments provided.")
        sys.exit(1)

    if a and b:
    if a or b:
    if not a:
    if a is None:

    for i, arg in enumerate(arguments):
        print(f"Argument {i}: {arg}")

    try:
        width = float(input("Enter width: "))
        height = float(input("Enter height: "))
        area = calculate_area(width, height)
        print(f"The area is: {area}")
    except ValueError as e:
        print(f"Error: {e}")

    sample_object = SampleClass("NeoVim User")
    sample_object.greet()

    # FIXME poop
    # TODO fart
    # HACK fart
    # XXX fart

    self.poopFart()
    return 10
    yield 
    continue

# Check if the script is the main running script
if __name__ == "__main__":
    main(sys.argv[1:])
