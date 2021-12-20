# Import Visualiser class from module visualiser
from visualiser.visualiser import Visualiser as vs

# Add decorator
# Decorator accepts optional arguments: ignore_args , show_argument_name, show_return_value and node_properties_kwargs
@vs(
    node_properties_kwargs={
        "shape":"record",
        "color":"#f57542",
        "style":"filled",
        "fillcolor":"grey",},)
def f(n):
    if (n < 3):
        return n
    else:
        return (
            +      f(n - 1)
            + (2 * f(n - 2))
            + (3 * f(n - 3))
        )
    

def main():
    #Tests
    print(f(6))
    # Save recursion tree to a file
    vs.make_animation("f.gif", delay=2)

if __name__ == "__main__":
    main()