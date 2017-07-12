module DropIn
  def HOSTNAME
    `hostname`.chomp
  end

  def PORT
    ENV["PORT"] || 4567
  end

  def click_option(option_type)
    find(".braintree-option__#{option_type} .braintree-option__label").click
  end

  def hosted_field_send_input(key, value)
    find("iframe[id='braintree-hosted-field-#{key}']").click
    find("iframe[id='braintree-hosted-field-#{key}']").send_keys(value)
  end

  def submit_pay
    button = find("input[type='submit']")

    sleep 2

    button.click
  end
end
