module PactasItero
  module Api
    module PlanVariants
      def plan_variants(options = {})
        options = options.camelize_keys
        get "api/v1/PlanVariants", options
      end

      def plan_variant(plan_variant_id)
        plan_variants.find { |plan_variant| plan_variant.id == plan_variant_id }
      end
    end
  end
end
