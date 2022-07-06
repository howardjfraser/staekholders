# README

This is a minimal extraction of the campaign stakeholders page.

The following (easy) requirements of the page are met in the main branch -

- Has multiple views of the same data, e.g. list and report.
- Items shown can be refined by searching and filtering.
- Search and filtering update the current view.
- Search and filtering auto-submit.
- Search bar is always shown.
- Filter panel is hidden by default.
- Filter panel can be opened and closed by the user.
- Search panel and filter panel are on different parts of the page.
- Clear filters

The remaining requirements are -
- Filter panel open state should be maintained when -
	- Toggling views.
	- Searching and filtering.
	- Refreshing the page (browser URL).
- When toggling between views, the following should also stay the same -
	- The list of items.
	- Search / filter control selections.
- When filter panel is closed page should indicate if there are active filters.

The real campaign stakeholders page currently meets all these requirements, but it seems too complicated to roll out across the app.

The idea here is that it’s a lot quicker / easier / clearer to spike approaches to the problem in small, standalone app.

There only Hotwire in the main branch is Stimulus controllers for -
  - Auto submiting search / filtering.
  - Showing / hiding the filter panel.

Things that are up for consideration -

- Further use of Turbo Frames / Streams?
- How / where to store filter / search details?
- Should filter params be a PUT or a GET?
- Should loading page with no params retrieve a saved filter or reset to no filters?
- Should the filter panel come from the server when opened?
- How / where to store filter panel state?
- Do we need separate forms for search and filtering?
