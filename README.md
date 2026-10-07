# NC0-Avoid

AI-assisted research manuscripts on deterministic range avoidance for local Boolean circuits, by Yan Zhong.

Given a circuit $f:\{0,1\}^n\to\{0,1\}^m$ with $m>n$, range avoidance asks for a string outside the image of $f$. In $\mathrm{NC}^0_k$-AVOID, each output depends on at most $k$ input bits.

## Manuscripts

| Manuscript | Author | Version | Files |
| --- | --- | --- | --- |
| Improved Range Avoidance for Local Circuits | Yan Zhong | September 23, 2026 research draft | [PDF](preprints/logarithm-free-range-avoidance/paper.pdf) · [LaTeX](preprints/logarithm-free-range-avoidance/paper.tex) · [Details](preprints/logarithm-free-range-avoidance/README.md) |

The draft claims a deterministic polynomial-time algorithm for every fixed locality $k\ge3$ when

$$m\ge C_k n^{(k-1)/2},$$

with arbitrary local predicates, input neighborhoods, and repeated neighborhoods. It also develops a time–stretch tradeoff and consequences for local demi-bits generators and cell-probe data structures.

## Research status and AI assistance

This is a research draft, not a formally verified result. ChatGPT/Codex was used extensively to develop arguments, review proof details and literature, and prepare the manuscript. Mathematical review in those conversations and finite computational checks of selected components supplement the written proofs. These checks do not implement the full asymptotic algorithm. No Lean or other proof-assistant formalization is claimed.

The general polynomial-time bound at locality three remains $m\ge C_3n$, with a sufficiently large constant. The target $m=n+O(n^{2/3})$, motivated by explicit rigid-matrix constructions, is an open research goal and is not a theorem in this release.

## Reading and building

Start with the [manuscript page](preprints/logarithm-free-range-avoidance/README.md). The LaTeX source is self-contained, including its bibliography; build instructions and a BibTeX entry appear there.

With TeX Live and `latexmk` installed, run `make pdf` from the repository root. The generated PDF is written to `build/paper.pdf`.

See [CONTENTS.md](CONTENTS.md) for the repository index and [VERSION_HISTORY.md](VERSION_HISTORY.md) for release notes. Please report mathematical errors or questions through GitHub issues, with the relevant theorem, equation, or page number.

This repository is inspired by the manuscript-and-source organization of [openai/math](https://github.com/openai/math). It is an independent project and is not affiliated with or endorsed by OpenAI.
