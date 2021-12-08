# fcct-interop-demo

This demonstrates the current (as of 2021/12/08) interop problem for [First-Class Component Templates][rfc] with non-colocated component templates.

[rfc]: https://github.com/emberjs/rfcs/pull/779

To see how this currently *doesn't work*:

Set up [ember-template-imports](https://github.com/ember-template-imports/ember-template-imports): 

- clone it and check out PR #25
- run `yarn pack`
- grab the path to the generated `.tgz` file

Set up *this* project:

- clone this repo
- update the path for `ember-template-imports` to point to the `.tgz` file from `yarn pack`-ing it
- run `yarn` to install dependencies

See the bug:

- run `ember serve`
- open `http://localhost:4200` to see the app running

If interop with non-colocated templates *did* work you would see `This is old school!` in a second paragraph. If there were any debug info in the build or console, you could be informed that something isn't right. Instead, you see the body of the `<Fcct />` component up to the point where it invokes the `<OldSchool />` component, and then *nothing*, and then the rest of the body of the `<Fcct />` component.

That is: this silently fails in a way that is completely inscrutable to developers!
