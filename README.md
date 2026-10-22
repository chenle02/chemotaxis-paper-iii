# Chemotaxis III: bifurcation and spike-like solutions

Public manuscript and reproducibility materials for **Chemotaxis models with signal-dependent sensitivity and a logistic-type source, III: Bifurcation and spike-like solutions**, by Le Chen, Ian Ruau, and Wenxian Shen.

- [Read the manuscript PDF](10-20-2026-CRS-3-Le-v2.pdf).
- [Published preprint, arXiv:2610.20976v1](https://arxiv.org/abs/2610.20976v1).
- [Lean companion and verification boundary](https://github.com/chenle02/chemotaxis-paper-iii-lean).

## Manuscript version

The source here is the October 20, 2026 v2 candidate. Its exact source and PDF hashes are in [manuscript-manifest.json](manuscript-manifest.json). This public repository does not assert an arXiv v2 upload, journal submission, or acceptance. The arXiv link above identifies the already published v1; it is not a claim that the two versions are identical.

## Build

Install TeX Live with LuaLaTeX, latexmk, BibTeX and amsrefs, then run:

```sh
./build.sh
```

The build writes to `build/`. The committed PDF is the exact selected manuscript artifact; a fresh PDF can differ in timestamps and metadata. The bibliography and all 16 referenced numerical figures are included. The source uses the existing `paper_iii_numerical_experiments` graphics path.

## Lean verification

The companion distinguishes **47 verified scopes, 23 conditional scopes, and 3 exclusions** across 73 overlapping manuscript-facing scopes. These are not percentages of whole-paper correctness. The current formal library includes 1,525 indexed public declarations; definitions and compiler-generated helpers are not theorem counts.

The actual weak-H2 cosine complement, critical signal response from a supplied population jet and actual elliptic solution family, and conserved-mean quadratic coefficient are formalized. Actual operator/Fredholm identification, local PDE bifurcation, center-manifold construction and invariance, global bifurcation alternatives/correspondence, and PDE stability remain substantive foundations. **The whole paper is not Lean-certified.** See the companion's scope ledger for each precise boundary.

## Related reusable libraries

- [neumann-cosine-lean](https://github.com/chenle02/neumann-cosine-lean): cosine modes and Neumann spectral calculations.
- [scalar-pitchfork-lean](https://github.com/chenle02/scalar-pitchfork-lean): scalar pitchfork and branch-topology results under explicit hypotheses.

These standalone libraries have their own versioned theorem scopes and receipts; later companion results do not silently extend their APIs.

## Citation and rights

Cite the authors and arXiv:2610.20976, specifying this candidate when using its revised statements. See [CITATION.cff](CITATION.cff). Manuscript and figures remain copyright their authors; this repository grants no additional manuscript license. The Lean repositories specify their own software licenses.

## Reproducibility and tools

The selected manuscript files are copied without scientific edits. Lean verification was developed and checked with [lean-pkg](https://github.com/lean-pkg/lean-pkg) ([concept DOI](https://doi.org/10.5281/zenodo.23272098)). AI assistance was used in formalization, tooling, and documentation; the exact Lean statements and explicit hypotheses govern the formal claims.
