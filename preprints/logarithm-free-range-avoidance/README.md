# Logarithm-Free Range Avoidance for Local Circuits

**Author:** Yan Zhong, Johns Hopkins University  
**Version:** September 23, 2026 research draft  
**Files:** [PDF](paper.pdf) · [Standalone LaTeX source](paper.tex) · [BibTeX](citation.bib)

## Main statement

For every fixed $k\ge3$, the manuscript claims a deterministic polynomial-time algorithm that, given an explicit $k$-local map $f:\{0,1\}^n\to\{0,1\}^m$, finds a string outside its image whenever

$$m\ge C_k n^{(k-1)/2}.$$

Here $C_k$ and the polynomial running-time exponent may depend on $k$. The statement allows arbitrary local predicates, arbitrary input neighborhoods, and repeated neighborhoods. In particular, it gives a sufficiently large constant multiple of linear stretch for locality three and $C_4n^{3/2}$ for locality four.

The approach constructs cancellation certificates for signed XOR systems and selects one common signing across the Fourier layers of the local circuit. Its matrix analysis uses a constructive spectral hypergraph Moore argument. The manuscript also gives the hierarchy tradeoff

$$m\ge C_k n(n/\ell)^{(k-3)/2},\qquad
\text{time}=\operatorname{poly}(\text{input})(\mathrm e n/\ell)^{O_k(\ell)}.$$

Increasing $\ell$ can reduce stretch for $k\ge4$ at a cost in running time. This does not give a polynomial-time algorithm at every $m>n$.

## Applications stated in the draft

- Polynomial-size one-sided distinguishers that reject the entire image and accept at least half of uniformly random output strings, excluding local demi-bits generators at the stated stretch.
- Explicit query problems with $\Omega_t(m^{2/(t-1)})$ bits of storage for $t$ nonadaptive bit probes; three probes require linear storage.
- A separate logarithm-free $\Omega_{t,w}(m^{2/t})$ storage bound for adaptive probes to words of fixed size $w$.

The precise models, constants, and parameter restrictions are specified in the manuscript.

## Verification and limitations

This is an AI-assisted research draft. ChatGPT/Codex was used extensively in developing arguments, reviewing proof details and literature, and preparing the text. Review in those conversations and finite computational checks of selected forest and memory-extraction components supplement the mathematical arguments. Those checks do not implement the full asymptotic algorithm, and no formal verification is claimed.

The current general locality-three result requires $m\ge C_3n$ for a sufficiently large constant. Deterministic polynomial-time AVOID at $m=n+O(n^{2/3})$, or at $m=n+1$, remains outside the claims of this release. The former is a research target motivated by rigid-matrix constructions.

## Build

Use a standard TeX Live or MiKTeX installation with `pdflatex` and the packages imported by `paper.tex` (including `amsmath`, `amsthm`, `mathtools`, `microtype`, `needspace`, `booktabs`, `xcolor`, `hyperref`, and `cleveref`). From this directory, run:

```sh
pdflatex -interaction=nonstopmode -halt-on-error paper.tex
pdflatex -interaction=nonstopmode -halt-on-error paper.tex
pdflatex -interaction=nonstopmode -halt-on-error paper.tex
```

Repeat if LaTeX reports that references or bookmarks need another pass. The bibliography is embedded in the source; no external `.bib` file or BibTeX build step is needed.

Alternatively, with `latexmk` installed, run `make pdf` from the repository root. This writes the generated file to `build/paper.pdf` and preserves the distributed manuscript PDF.

## Citation

```bibtex
@unpublished{Zhong2026LogarithmFreeAvoidance,
  author = {Yan Zhong},
  title = {Logarithm-Free Range Avoidance for Local Circuits},
  year = {2026},
  month = sep,
  note = {AI-assisted research draft, September 23, 2026}
}
```

Please use a commit permalink when referring to a specific repository version. Questions and corrections are welcome through GitHub issues; include the relevant theorem, equation, or page number.
