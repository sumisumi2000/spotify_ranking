class FormComponent < ViewComponent::Base
  def initialize(term: nil, limit: nil, kind: nil, form: nil)
    @term = term
    @limit = limit
    @kind = kind
    @form = form
  end
end
