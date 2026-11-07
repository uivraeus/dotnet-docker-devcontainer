# Dev container for .Net and Docker development

TBD...

## VS Code extensions for C#

The `dotnet` feature installs the **C#** extension (`ms-dotnettools.csharp`). It is open
source and provides code intelligence and the debugger. The dev container also installs
**C# Dev Kit** (`ms-dotnettools.csdevkit`), which builds on the C# extension. It adds the
**Testing** view, in-editor test coverage, the **C# Project Details** view, and automatic
loading of a repo's solution, whose name appears in the status bar.

C# Dev Kit is not open source. It uses the Visual Studio license model:

- It is free for individuals, education, open-source development and small teams.
- Larger organizations need a Visual Studio Professional or Enterprise subscription.
  GitHub Codespaces includes the entitlement.

On first use, the extension asks you to sign in with a Microsoft account. The extension
doesn't enforce sign-in, so free users can dismiss the prompt. If the terms don't fit your
situation, remove `ms-dotnettools.csdevkit` from `.devcontainer/devcontainer.json`.
Editing, building, running and debugging all work without it; you lose only the Testing
view, in-editor coverage and the C# Project Details view.

See the [license terms](https://marketplace.visualstudio.com/items/ms-dotnettools.csdevkit/license)
and [Signing in to C# Dev Kit](https://code.visualstudio.com/docs/csharp/signing-in).

## Directory structure

The `projects/` directory is "git-ignored" to allow for separate and individual repos being cloned there for development within this dev container environment.
