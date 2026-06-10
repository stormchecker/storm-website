---
title: Publications
navigation_weight: 5
layout: default
---

{% include includes/toc.html %}

## Storm tool papers

<!--- Script to show bibtex -->
<script>
function toggleBibtex(button) {
  const container = button.closest('.pub-entry');
  const bib = container.querySelector('.bibtex-code');
  if (bib.style.display === "none") {
    bib.style.display = "block";
    button.innerText = "Hide BibTeX";
  } else {
    bib.style.display = "none";
    button.innerText = "Show BibTeX";
  }
}

function copyBibtex(button) {
  const container = button.closest('.pub-entry');
  const bib = container.querySelector('.bibtex-code').innerText;

  navigator.clipboard.writeText(bib);

  button.innerText = "Copied!";
  setTimeout(() => button.innerText = "Copy", 1500);
}
</script>

{:.alert .alert-info}
If you want to cite Storm, please use the most recent paper in this category.


{% bibliography --query @*[category=tool] %}

## Competition reports

{:.alert .alert-info}
The publications in this category present tool comparisons.

{% bibliography --query @*[category=competition] %}

## Storm tutorials

{:.alert .alert-info}
The publications in this category present tutorials on Storm. See also the dedicated [tutorial page]({{ '/tutorials.html' | relative_url }}){:.alert-link}.

{% bibliography --query @*[category=tutorial] %}

## Papers about features in Storm

{:.alert .alert-info}
The publications in this category present functionality from which a substantial part is available in Storm's release.

{% bibliography --group_by year --query @*[category=feature] %}

## Tools using Storm

{:.alert .alert-info}
A list of tools which make use of Storm.

- [Caesar](https://www.caesarverifier.org/): Deductive verifier for probabilistic programs
- [CONVINCE](https://convince-project.github.io): Open source toolbox to improve robust robot deliberation with the help of planning, learning, and model checking techniques
- [COOL-MC](https://github.com/LAVA-LAB/COOL-MC): Combining single-agent and multi-agent reinforcement learning with model checking
- [jajapy](https://github.com/Rapfff/jajapy): Baum-Welch algorithm on various kinds of Markov models
- [Momba](https://momba.dev/): Python framework for dealing with quantitative models centered around the JANI-model interchange format
- [Prophesy](https://github.com/moves-rwth/prophesy): Parameter synthesis in Markov models
- [PAYNT](https://github.com/randriu/synthesis): Automated synthesis of probabilistic programs
- [QMaude](https://maude.ucm.es/qmaude/): Quantitative specification and verification in Maude
- [SAFEST](https://www.safest.dgbtek.com/): Dynamic fault-tree analysis tool
- [STAMINA](https://staminachecker.org/): State-space truncation tool that can analyze infinite-sized models
- [TEMPEST](https://tempest-synthesis.org): Synthesis tool for reactive systems and shields in probabilistic environments

## Papers using Storm as a backend

{:.alert .alert-info}
The publications in this category present tools, algorithms and case studies that use Storm as a backend. 

{% bibliography --group_by year --query @*[category=using] %}

{:.alert .alert-danger}
If there is a publication missing in some of the lists above, feel free to [contact us]({{ '/about.html#people' | relative_url }}){:.alert-link}.
