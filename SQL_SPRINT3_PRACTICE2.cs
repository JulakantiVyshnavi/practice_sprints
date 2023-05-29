/*Write a program to create custom attribute with name Author with following properties - Name, Email, CreatedAt. Attribute should be applicable only for classes.
 Similarly create an attribute with name Subroutine with a property Description. 
Attributes should be applicable only for methods. Further create a class called Calculator with 4 methods - Add, Subtract, Multiply, Divide. 
Decorate the class & methods with appropriate attributes.*/

using System;
// Custom attribute for classes
[AttributeUsage(AttributeTargets.Class)]
public class AuthorAttribute : Attribute
{
    public string Name { get; set; }
    public string Email { get; set; }
    public DateTime CreatedAt { get; set; }
    public AuthorAttribute(string name, string email, string createdAt)
    {
        Name = name;
        Email = email;
        CreatedAt = DateTime.Parse(createdAt);
    }
}
// Custom attribute for methods
[AttributeUsage(AttributeTargets.Method)]
public class SubroutineAttribute : Attribute
{
    public string Description { get; set; }
    public SubroutineAttribute(string description)
    {
        Description = description;
    }
}
// Calculator class decorated with Author attribute
[Author("John Doe", "johndoe@example.com", "2023-05-29")]
public class Calculator
{
    // Add method decorated with Subroutine attribute
    [Subroutine("Adds two numbers")]
    public int Add(int a, int b)
    {
        return a + b;
    }
    // Subtract method decorated with Subroutine attribute
    [Subroutine("Subtracts two numbers")]
    public int Subtract(int a, int b)
    {
        return a - b;
    }
    // Multiply method decorated with Subroutine attribute
    [Subroutine("Multiplies two numbers")]
    public int Multiply(int a, int b)
    {
        return a * b;
    }
    // Divide method decorated with Subroutine attribute
    [Subroutine("Divides two numbers")]
    public double Divide(int a, int b)
    {
        return (double)a / b;
    }
}
class Program
{
    static void Main(string[] args)
    {
        // Retrieve Author attribute from the Calculator class
        AuthorAttribute authorAttribute = (AuthorAttribute)Attribute.GetCustomAttribute(typeof(Calculator), typeof(AuthorAttribute));
        // Display the Author attribute properties
        Console.WriteLine("Author: {0}", authorAttribute.Name);
        Console.WriteLine("Email: {0}", authorAttribute.Email);
        Console.WriteLine("Created At: {0}", authorAttribute.CreatedAt);
        // Retrieve and display Subroutine attribute from each method in the Calculator class
        var methods = typeof(Calculator).GetMethods();
        foreach (var method in methods)
        {
            var subroutineAttribute = (SubroutineAttribute)Attribute.GetCustomAttribute(method, typeof(SubroutineAttribute));
            if (subroutineAttribute != null)
            {
                Console.WriteLine("\nMethod: {0}", method.Name);
                Console.WriteLine("Description: {0}", subroutineAttribute.Description);
            }
        }
    }
}









