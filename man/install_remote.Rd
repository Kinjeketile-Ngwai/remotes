% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install-remote.R
\name{install_remote}
\alias{install_remote}
\alias{add_metadata}
\alias{remote_download}
\alias{remote_metadata}
\alias{remote_package_name}
\alias{remote_sha}
\title{Install a remote package.}
\usage{
install_remote(
  remote,
  dependencies,
  upgrade,
  force,
  quiet,
  build,
  build_opts,
  build_manual,
  build_vignettes,
  repos,
  type,
  ...
)

add_metadata(pkg_path, meta)

remote_download(x, quiet = FALSE)

remote_metadata(x, bundle = NULL, source = NULL, sha = NULL)

remote_package_name(remote, ...)

remote_sha(remote, ...)
}
\arguments{
\item{dependencies}{Which dependencies do you want to check?
Can be a character vector (selecting from "Depends", "Imports",
"LinkingTo", "Suggests", or "Enhances"), or a logical vector.

\code{TRUE} is shorthand for "Depends", "Imports", "LinkingTo" and
"Suggests". \code{NA} is shorthand for "Depends", "Imports" and "LinkingTo"
and is the default. \code{FALSE} is shorthand for no dependencies (i.e.
just check this package, not its dependencies).

The value "soft" means the same as \code{TRUE}, "hard" means the same as \code{NA}.

You can also specify dependencies from one or more additional fields,
common ones include:
\itemize{
\item Config/Needs/website - for dependencies used in building the pkgdown site.
\item Config/Needs/coverage for dependencies used in calculating test coverage.
}}

\item{upgrade}{One of "default", "ask", "always", or "never". "default"
respects the value of the \code{R_REMOTES_UPGRADE} environment variable if set,
and falls back to "ask" if unset. "ask" prompts the user for which out of
date packages to upgrade. For non-interactive sessions "ask" is equivalent
to "always". \code{TRUE} and \code{FALSE} are also accepted and correspond to
"always" and "never" respectively.}

\item{force}{Force installation, even if the remote state has not changed
since the previous install.}

\item{quiet}{If \code{TRUE}, suppress output.}

\item{build}{If \code{TRUE} build the package before installing.}

\item{build_opts}{Options to pass to \verb{R CMD build}, only used when \code{build}}

\item{build_manual}{If \code{FALSE}, don't build PDF manual ('--no-manual').}

\item{build_vignettes}{If \code{FALSE}, don't build package vignettes ('--no-build-vignettes').
is \code{TRUE}.}

\item{repos}{A character vector giving repositories to use.}

\item{type}{Type of package to \code{update}.}

\item{...}{Other arguments passed on to \code{\link[utils:install.packages]{utils::install.packages()}}.}
}
\description{
This:
\enumerate{
\item downloads source bundle
\item decompresses & checks that it's a package
\item adds metadata to DESCRIPTION
\item calls install
}
}
\details{
It uses the additional S3 generic functions to work. Writing methods for
these functions would allow 3rd party packages to define custom remotes.
}
\keyword{internal}
