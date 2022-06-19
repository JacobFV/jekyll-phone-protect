require 'spec_helper'

describe(Jekyll::PhoneProtect::PhoneProtectionFilter) do
  let(:output) do
    render_liquid(content, {'phone' => phone})
  end

  context "simple example number" do
    let(:phone) { "+1-123-456-7890" }
    let(:content)  { "{{ '#{phone}' | encode_phone }}" }

    it "produces the correct percent-encoded phone number" do
      expect(output).to eq("+%31-%31%32%33-%34%35%36-%37%38%39%30")
    end
  end
end
