class Pack < ApplicationRecord
    has_one_attached :image

    validates :product_name, :company_name, :price, presence: true
    validates :is_publish, exclusion: { in: [nil] }

    scope :published, -> {Pack.where(is_publish: true)}
    scope :unpublished, -> { Pack.where(is_publish: false)}

    has_many :shops, dependent: :destroy
    has_many :people, through: :shops
    def self.set_dummy_datas
        20.times do
            Pack.create(
            product_name: Faker::Superhero.unique.name,
                company_name: Faker::Superhero.unique.power,
                price: [1000,2000,3000].sample,
                is_publish: true
            )
        end
    end
end
