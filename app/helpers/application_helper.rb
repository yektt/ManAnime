module ApplicationHelper
  def pluralize_contents(contents)
    if ( contents.length > 1 )
      contents.first.category + "s"
    else
      contents.first.category
    end
  end

  def is_or_are(contents)
    if ( contents.length > 1 )
      "are"
    else
      "is"
    end
  end
end
