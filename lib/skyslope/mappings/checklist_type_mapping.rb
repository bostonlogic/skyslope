module Skyslope
  class ChecklistTypeMapping
    include Kartograph::DSL

    kartograph do
      mapping ChecklistType

      root_key singular: '', plural: 'checklistTypes', scopes: [:read]

      scoped :read do
        property :checklist_type_id, key: 'checklistTypeId'
        property :checklist_type_name, key: 'checklistTypeName'
      end

    end
  end
end
