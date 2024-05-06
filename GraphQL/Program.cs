using DataLayer.DataServices;
using GraphQL_EF.Queries;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddSingleton<BookDataService>();
builder.Services.AddSingleton<AuthorDataService>();
builder.Services.AddGraphQLServer()
    .AddQueryType<Query>();

var app = builder.Build();
app.MapGraphQL();

app.MapGet("/", () => "Hello World!");

app.Run();