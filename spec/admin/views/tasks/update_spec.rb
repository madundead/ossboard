require 'spec_helper'
require_relative '../../../../apps/admin/views/tasks/update'

RSpec.describe Admin::Views::Tasks::Update do
  let(:task)      { Task.new(id: 1, title: 'test', body: 'test') }
  let(:exposures) { Hash[task: task] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/tasks/edit.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }
end