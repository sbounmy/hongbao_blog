module PageHelper
  # Creates a hyperlink to a page using the `title` key. Change the default in the args
  # below if you use a different key for page titles.
  def link_to_page(page, title_key: "title")
    link_to page.data.fetch(title_key, page.request_path), page.request_path
  end

  # Quick and easy way to change the class of a page if its current. Useful for
  # navigation menus.
  def link_to_if_current(text, page, active_class: "active")
    if page == current_page
      link_to text, page.request_path, class: active_class
    else
      link_to text, page.request_path
    end
  end

  # Conditionally renders the block if an arg is present. If all the args are nil,
  # the block is not rendered. Handy for laconic templating languages like slim, haml, etc.
  def with(*args, &block)
    block.call(*args) unless args.all?(&:nil?)
  end

  # Render a block within a layout. This is a useful, and prefered way, to handle
  # nesting layouts, within Sitepress.
  def render_layout(layout, **kwargs, &block)
    render html: capture(&block), layout: "layouts/#{layout}", **kwargs
  end

  # Accepts a `Dir.glob` pattern (e.g. `pages/*.html.*`) and sorts them in
  # order as defined by the `order` Frontmatter key.
  def ordered_pages(glob)
    site.resources.glob(glob).sort_by { |r| -r.data.fetch("date", Date.today).to_time.to_i }
  end

  def date(date_string)
    Date.parse(date_string) if date_string.present?
  end

  def render_if_exists(path, *args)
    render path, *args
  rescue ActionView::MissingTemplate
    nil
  end
end
