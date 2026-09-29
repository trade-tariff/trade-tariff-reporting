# Trade Tariff Reporting

Trade Tariff Reporting is a static website for finding and downloading generated
reports. The page lists report objects from a reporting bucket through its HTTP
endpoint. Report generation happens elsewhere; reports are not committed to
this repository.

Use the [public reporting site](https://reporting.trade-tariff.service.gov.uk/index.html)
to browse published reports.

## Run locally

You need Make, Python 3 and a browser. From the repository root:

```sh
make serve
```

Open <http://127.0.0.1:8000>. The Makefile creates a temporary copy of `index.html`
with `REPORTING_DOMAIN` replaced. By default, the page reads from the development
reporting endpoint. Use `REPORTING_DOMAIN` to select another authorised endpoint.
A local preview still needs network access and suitable CORS permissions to list
remote reports.

## Check changes

Run `make build-local`, then inspect the page in a browser. Check date and service
filters, loading and error states, keyboard use, and report download links.
There is no automated application test suite in this repository.

## Deployment

[GitHub Actions workflows](.github/workflows/) publish the page to the reporting
buckets. Opening a pull request deploys to development. These are shared targets,
not isolated preview environments. Do not run deployment commands without approval.

## Contribute

Read [CONTRIBUTING.md](CONTRIBUTING.md) for the fork workflow, checks and private
security reporting.

## Licence

The repository uses the [MIT licence](LICENSE). Preserve its copyright notice.
Third-party assets and the reports themselves retain their own terms.
