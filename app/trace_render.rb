# frozen_string_literal: true

module Inesita
  module Component
    module Render
      alias old_render_virtual_dom render_virtual_dom

      def render_virtual_dom
        puts "render: #{self.class}"
        old_render_virtual_dom
      end
    end
  end
end
