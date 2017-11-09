module EmailsHelper
  def error_notice(obj, attr)
    if obj.errors.key?(attr)
      content_tag('p', obj.errors.messages[attr].join(', '), class: 'help-block text-danger')
    end
  end
end
