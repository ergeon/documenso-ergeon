# documenso-ergeon

Source for Ergeon E-Sign (sign.ergeon.com): [Documenso](https://github.com/documenso/documenso)
v2.20.0 (commit `38ecb217effcc53a7164d7123c51336f636bd3b2`), licensed under the
[GNU AGPL-3.0](LICENSE), with Ergeon branding and organisation auto-join applied.

Changes from upstream, and nothing else:

- `patches/0001-ergeon-branding.patch`: page titles and meta tags, the header logo and icon, and
  the Ergeon blue theme colours.
- `patches/0002-ergeon-auto-join-organisation.patch`: users whose email is on
  `NEXT_PRIVATE_AUTO_JOIN_EMAIL_DOMAIN` join the organisation `NEXT_PRIVATE_AUTO_JOIN_ORGANISATION_ID`
  as members without an invite, and new ones get no personal organisation.
- `patches/0003-ergeon-land-in-organisation-team.patch`: `/` opens that organisation's team even
  when the remembered team is elsewhere.
- `public/`: Ergeon favicons, web manifest and link-preview image, copied over `apps/remix/public/`.

Build: `make docker-build` clones upstream at the pinned tag, applies the patches, copies `public/`
and runs upstream's `docker/Dockerfile`.
