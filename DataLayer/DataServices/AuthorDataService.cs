using DataLayer.Entities;
using Microsoft.EntityFrameworkCore;

namespace DataLayer.DataServices;

public class AuthorDataService
{
    private Database db = new Database();

    public Author? GetAuthor(int id)
    {
        return db.Authors
            .Include(x => x.Books)
            .SingleOrDefault(x => x.Id == id);
    }

    public List<Author> GetAuthors()
    {
        return db.Authors
            .Include(x => x.Books)
            .ToList();
    }

    public Author? GetAuthorByName(string name)
    {
        return db.Authors
            .Include(x => x.Books)
            .SingleOrDefault(x => x.Name == name);
    }
}