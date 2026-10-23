# documenso-ergeon

Source for Ergeon E-Sign (sign.ergeon.com): [Documenso](https://github.com/documenso/documenso)
v2.20.0 (commit `38ecb217effcc53a7164d7123c51336f636bd3b2`), licensed under the
[GNU AGPL-3.0](LICENSE), with Ergeon branding applied.

Changes from upstream, and nothing else:

- `patches/0001-ergeon-branding.patch`: page titles and meta tags, the header logo and icon, and
  the Ergeon blue theme colours.
- `public/`: Ergeon favicons, web manifest and link-preview image, copied over `apps/remix/public/`.

Build: `make docker-build` clones upstream at the pinned tag, applies the patch, copies `public/`
and runs upstream's `docker/Dockerfile`.
