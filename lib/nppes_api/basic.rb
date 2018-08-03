module NPPESApi
  class Basic
    def initialize(data)
      @data = data
    end

    methods = [
      :status,
      :credential,
      :first_name,
      :last_name,
      :middle_name,
      :name,
      :organization_name,
      :gender,
      :sole_proprietor,
      :last_updated,
      :enumeration_date,
      :authorized_official_first_name,
      :authorized_official_middle_name,
      :authorized_official_last_name,
      :authorized_official_credential,
      :authorized_official_title_or_position,
      :authorized_official_telephone_number
    ]

    methods.each do |meth|
      define_method(meth) do
        @data[meth.to_s]
      end
    end
  end
end
