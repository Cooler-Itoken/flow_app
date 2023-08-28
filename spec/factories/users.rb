FactoryBot.define do
    factory :user do
        name { 'Michael Example' }
        email { 'michael@example.com' }
        password { 'password' }
        password_confirmation { 'password' }
        admin { true }
        activated { true }
        activated_at { Time.zone.now }
    end

    factory :another_user, :class => 'User' do
        name { "Other" }
        email { "Other@mail.com" }
        password                    {"111111"}
        password_confirmation       {"111111"}
    end

    factory :other_user, :class => 'User' do
        name { "Other" }
        email { "Other@mail.com" }
        password                    {"111111"}
        password_confirmation       {"111111"}
    end

    factory :archer, :class => 'User' do
        name { "Other" }
        email { "Other@mail.com" }
        password                    {"111111"}
        password_confirmation       {"111111"}
    end

    factory :many_users, class: User do
        sequence(:name) { |n| "Example User #{n}" }
        sequence(:email) { |n| "example-#{n}@gmail.com" }
        password { 'password' }
        password_confirmation { 'password' }
    end
end