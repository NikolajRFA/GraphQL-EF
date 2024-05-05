using DataLayer;
using Microsoft.EntityFrameworkCore;
using Xunit.Abstractions;

namespace DataLayerTests;

public class DatabaseTests
{
    private readonly ITestOutputHelper _testOutputHelper;

    public DatabaseTests(ITestOutputHelper testOutputHelper)
    {
        _testOutputHelper = testOutputHelper;
    }

    [Fact]
    public void Database_GetFirstBookAndAuthor_GetsFirstBookAndAuthorSuccessfully()
    {
        var db = new Database();
        var book = db.Books.Include(x => x.Author).FirstOrDefault()!;
        _testOutputHelper.WriteLine($"Book: {book.Title} by {book.Author.Name}");
        Assert.NotNull(db.Books.FirstOrDefault());
    }
}