require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:user) }
end
