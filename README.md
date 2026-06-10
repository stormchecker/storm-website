# Storm Website
Source code for the Storm website hosted at [www.stormchecker.org](https://www.stormchecker.org/).

## How it works
On every push to `main`, the website is automatically build using [Jekyll](https://jekyllrb.com) and GitHub Actions, and afterward deployed to [www.stormchecker.org](https://www.stormchecker.org/).
Note that the whole deployment process takes a few minutes.

## Contributing
The easiest way to suggest changes and additions to the website is to fork this repository and create a pull request to `main`.
Of course, you can also write us an email :email: `support at stormchecker.org`


## Building the website locally
If you want to check your local changes before making them public, the simplest way is to use [Docker](https://www.docker.com/).
Simply execute in the root of this repository:
```console
docker compose up
```
This starts up a Docker container from your local changes.
You can see the resulting website by visiting [http://localhost:4000](http://localhost:4000).


## Tests
The CI tests perform additional checks which can also be executed locally:
To test whether all links in the website are valid run the following:
```console
bundle exec rake test
```

To test whether all links provided in published papers remain valid run the following:
```console
bundle exec rake test_paper_links
```
