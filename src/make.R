# Render exercises

ex_files <- list.files("src/exercises", "\\.qmd", full.names = TRUE)
purrr::map(ex_files, quarto::quarto_render, .progress = "Rendering exercises: ")

# Render slides

slides_files <- list.files("src/slides", "\\.qmd", full.names = TRUE)
purrr::map(slides_files, quarto::quarto_render, .progress = "Rendering slides: ")

# Render rest of site

site_files <- list.files("src/", "\\.qmd", full.names = TRUE)
purrr::map(site_files, quarto::quarto_render, .progress = "Rendering site: ")
