using DataLayer.DataServices;
using DataLayer.Entities;

namespace GraphQL_EF.Queries;

public class Query
{
    private readonly BookDataService _bds = new();
    private readonly AuthorDataService _ads = new();
    private readonly PublisherDataService _pds = new();
    
    [GraphQLDescription("Returns all Books")]
    public IEnumerable<Book> GetBooks() => _bds.GetBooks();

    [GraphQLDescription("Returns the specified Book")]
    public Book? GetBook([GraphQLDescription("Book Title")] string title) =>
        _bds.GetBookByTitle(title);

    [GraphQLDescription("Returns the specified Author")]
    public Author? GetAuthor([GraphQLDescription("Author Name")] string name) =>
        _ads.GetAuthorByName(name);

    [GraphQLDescription("Returns all Authors")]
    public IEnumerable<Author> GetAuthors() => _ads.GetAuthors();

    [GraphQLDescription("Returns all Publishers")]
    public IEnumerable<Publisher> GetPublishers() => _pds.GetPublishers();
}