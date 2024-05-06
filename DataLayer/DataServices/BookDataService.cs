using DataLayer.Entities;
using Microsoft.EntityFrameworkCore;

namespace DataLayer.DataServices;

public class BookDataService
{
    private Database db = new Database();

    public Book? GetBook(int id)
    {
        return db.Books
            .Include(x => x.Author)
            .SingleOrDefault(x => x.Id == id);
    }

    public List<Book> GetBooks()
    {
        return db.Books
            .Include(x => x.Author)
            .ToList();
    }

    public Book? GetBookByTitle(string title)
    {
        return db.Books
            .Include(x => x.Author)
            .SingleOrDefault(x => x.Title == title);
    }
}