# Action Hugo
Github action to build SSG with Hugo. The Go-based Docker image included in
this action installs GCC, C libraries, and Git. Then it pulls a specific
version of Hugo from the official repository. Hugo is built locally from
source and installed via go. From the entrypoint script, the action will pull
themes installed through git submodule prior to building. Finally, hugo
executes the build command with optional arguments supplied to generate the
static site.

## Contributing
If you like using the action and want to improve it, please submit a pull
request. If you experience issues using this action in your workflow, submit
an issue describing changes you may require.

[Contact Me][contact]

[contact]: https://seedshare.io/#contact
