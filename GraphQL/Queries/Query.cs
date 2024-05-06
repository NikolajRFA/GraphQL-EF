using DataLayer.DataServices;
using DataLayer.Entities;

namespace GraphQL_EF.Queries;

public class Query
{
    private BookDataService _bds = new();
    private AuthorDataService _ads = new();
    
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
}