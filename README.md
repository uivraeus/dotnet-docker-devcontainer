# Dev container for .Net and Docker development

TBD...

## VS Code extensions for C#

The `dotnet` feature installs the **C#** extension (`ms-dotnettools.csharp`). It is open
source and provides code intelligence and the debugger, which is enough to edit, build,
run and debug .NET apps and their tests.

**C# Dev Kit** (`ms-dotnettools.csdevkit`) is deliberately not installed. Its features
(the Testing view, in-editor coverage, the C# Project Details view) require signing in
with a Microsoft account, and this environment should work without one. Tests run with
`dotnet test` or VS Code tasks, tests are debugged with a normal launch configuration,
and coverage reports come from ReportGenerator. The `dotnet-docker-smoketest` project
shows all three.

## Directory structure

The `projects/` directory is "git-ignored" to allow for separate and individual repos being cloned there for development within this dev container environment.
