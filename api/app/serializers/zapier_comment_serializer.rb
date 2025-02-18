# frozen_string_literal: true

class ZapierCommentSerializer < ApiSerializer
  api_field :public_id, name: :id

  api_field :body_html, name: :content, default: ""

  api_field :created_at

  api_field :parent_id, nullable: true do |comment|
    comment&.parent&.public_id
  end
end
