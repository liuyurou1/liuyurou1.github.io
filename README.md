# Yurou Liu — Personal Homepage

A clean, single-page academic homepage (plain HTML + CSS, no build step),
styled after academic homepages such as [dongguanting.github.io](https://dongguanting.github.io/).

## Preview locally

Just open `index.html` in a browser. Or run a tiny server (nicer for relative paths):

```bash
cd lyr
python3 -m http.server 8000
# then visit http://localhost:8000
```

## File structure

```
lyr/
├── index.html          # the whole page — edit content here
├── css/style.css       # all styling (light + dark mode)
├── images/
│   ├── avatar.svg      # profile photo placeholder  → replace with a real photo
│   ├── denoisevae.svg  # paper thumbnail placeholders
│   ├── anids.svg
│   └── mmmrl.svg
└── README.md
```

## What to customize (search these in `index.html`)

1. **Photo** — put a real photo at `images/avatar.jpg` and change
   `<img class="avatar" src="images/avatar.svg" ...>` to `src="images/avatar.jpg"`.
2. **Email** — replace `liuyurou@ruc.edu.cn` with your real address (appears in 3 places).
3. **GitHub / social links** — update the `#` / placeholder URLs in the `.social` block.
   Remove any link you don't use.
4. **CV** — drop a `assets/cv.pdf` (create the `assets/` folder), or remove the CV button.
5. **Bio & advisor link** — the `.bio` paragraphs and the Prof. Bing Su scholar link.
6. **News** — add `<li>` items in the `.news-box` (newest first).
7. **Publications** — each `<article class="pub">` is one paper. Duplicate a block to add more.
   - Bold your own name with `<span class="me">Yurou Liu</span>`.
   - Change the venue badge; add `class="pub-venue oral"` for Oral/Spotlight (red badge).
   - Replace paper thumbnails with real figures (`images/xxx.png`).
8. **Optional sections** — Experience and Honors blocks are commented out in `index.html`;
   uncomment and fill them if you want them.

> ⚠️ Please **verify the publication list** against your Google Scholar. I pre-filled:
> - *DenoiseVAE* (ICLR 2025) — confirmed, first author
> - *Learning 3D Anisotropic Noise Distributions...* (NeurIPS 2025) — confirmed, co-author
> - *Multi-Modal Molecular Representation Learning via Structure Awareness* (arXiv 2025) —
>   marked as a preprint; **confirm the authorship, title, and venue** and fix if needed.

## Deploy on GitHub Pages (free)

1. Create a repo named `<your-username>.github.io`.
2. Copy the **contents of this `lyr/` folder** to the repo root (so `index.html` is at the top).
3. Push, then enable Pages: repo **Settings → Pages → Source: `main` branch / root**.
4. Your site goes live at `https://<your-username>.github.io/`.

Icons load from CDNs (Font Awesome + Academicons); an internet connection is needed to
show them. Everything else works offline.
