# -- Project information -----------------------------------------------------

project = 'Hyperview'
copyright = '2025 Hyperview'
author = 'Hyperview'
show_version = 'false'
show_breadcrumb_rel_links = 'false'

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings.
extensions = [
    'sphinx_design',
    'sphinxcontrib.gtagjs',
    'myst_parser',
    'sphinx_copybutton',
    'sphinx_sitemap',
]

# Enable myst extensions
myst_enable_extensions = [
    'colon_fence',
    'attrs_block',
]

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
source_suffix = {
    '.rst': 'restructuredtext',
    '.txt': 'markdown',
    '.md': 'markdown',
}

# The master toctree document.
master_doc = 'index'

language = 'en'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# -- sphinx-themes -----------------------------------------------------------

html_theme = 'furo'

# If true, this will show te view source option in generated html
html_show_sourcelink = False

# -- Options for HTML output -------------------------------------------------

# Add any paths that contain templates here, relative to this directory.
templates_path = ['../_templates']

html_static_path = ['../_static']

html_baseurl = 'https://docs.hyperviewhq.com/'

html_extra_path = ['robots.txt']

sitemap_url_scheme = '{link}'

sitemap_excludes = [
    'search.html',
    'genindex.html',
]

html_logo = '../_static/logo.png'

html_favicon = '../_static/favicon.ico'

html_css_files = [
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css',
    'css/hv-styles.css',
]

html_js_files = [
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js',
]

html_theme_options = {
    'sidebar_hide_name': True,
    'footer_icons': [
        {
            'name': 'GitHub',
            'url': 'https://github.com/HyperviewHQ/hyperview-docs',
            'html': '<i class="fa-solid fa-brands fa-github fa-2x"></i>',
            'class': '',
        },
        {
            'name': 'Twitter',
            'url': 'https://x.com/hyperviewhq',
            'html': '<i class="fa-solid fa-brands fa-x-twitter fa-2x"></i>',
            'class': '',
        },
    ],
    'light_css_variables': {
        'font-stack': 'Poppins, Roboto, Arial, Helvetica, sans-serif',
        'font-stack--monospace': 'Courier, monospace',
        'color-brand-primary': '#6ca6ed',
        'color-brand-content': '#6ca6ed'
    },
    'dark_css_variables': {
        'color-brand-primary': '#6ca6ed',
        'color-brand-content': '#6ca6ed'
    },
}

html_context = {
    'default_mode': 'auto',
}


# This sets the order of the templates that appear on the side
html_sidebars = {
    '**': [
        'sidebar/scroll-start.html',
        '../_templates/hv-brand.html',
        '../_templates/hv-docs-home.html',
        'sidebar/search.html',
        'sidebar/navigation.html',
        '../_templates/hv-api-docs-link.html',
        'sidebar/scroll-end.html',
    ]
}

# Google analytics
gtagjs_ids = [
    'UA-39153802-3',
]
