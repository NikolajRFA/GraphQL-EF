using DataLayer.Entities;
using Microsoft.EntityFrameworkCore;

namespace DataLayer.DataServices;

public class PublisherDataService
{
    private Database db = new();
    
    public Publisher? GetPublisher(int id)
    {
        return db.Publishers
            .Include(x => x.Books)
            .SingleOrDefault(x => x.Id == id);
    }

    public List<Publisher> GetPublishers()
    {
        return db.Publishers
            .Include(x => x.Books)
            .ToList();
    }
}