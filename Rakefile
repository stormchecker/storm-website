require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  HTMLProofer.check_directory('_site/', {
    assume_extension: ['.html'],
    ignore_urls: [
      # These urls lead to some errors in html-proofer and were manually checked to be valid
      # Anchor not found
      'https://www.cse.msu.edu/~cse870/Materials/FaultTolerant/manual-galileo.htm#Editing%20in%20the%20Textual%20View', # Anchor not found
      'https://github.com/neovim/neovim/issues/9050#issuecomment-424417456', # Anchor not found
      'https://qcomp.org/benchmarks/index.html#crowds', # Anchor not found
      'https://qcomp.org/benchmarks/index.html#jobs', # Anchor not found
      # ACM DOI
      'https://dl.acm.org/doi/10.5555/3709347.3743804',
      'https://doi.org/10.1007/s00165-021-00547-2',
      'https://doi.org/10.1145/2933575.2934574',
      'https://doi.org/10.65109/JAKK2294',
      # Other issues
      'https://www.aachener-zeitung.de/wirtschaft/storm-findet-sicherheitskritische-softwarefehler/3962772.html',
      'https://cavconference.org/2017/accepted-papers', # SSL error
      'https://getfem.org/gmm.html', # SSL issue
      'https://www.gnu.org/software/glpk/', # Often timeout
      'https://soplex.zib.de/', # Captcha
    ],
    typhoeus: {
      followlocation: true,
      cookiefile: 'cookiejar.txt',
      cookiejar: 'cookiejar.txt'
    }
  }).run
end

task :test_paper_links do
  sh "bundle exec jekyll build"
  HTMLProofer.check_file('paper_links.html', {
    enforce_https: false,
  }).run
end
