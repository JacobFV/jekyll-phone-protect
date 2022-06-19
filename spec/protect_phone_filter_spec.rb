require 'spec_helper'

describe(Jekyll::PhoneProtect::PhoneProtectionFilter) do
  let(:output) do
    render_liquid(content, {'phone' => phone})
  end

  context "simple example number" do
    let(:phone) { "+1-123-456-7890" }
    let(:content)  { "{{ '#{phone}' | encode_phone }}" }

    it "produces the correct percent-encoded phone number" do
      expect(output).to eq("tel:+1-123-456-7890")
    end
  end
end
