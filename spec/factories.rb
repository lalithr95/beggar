FactoryGirl.define do
  factory :pull_request do
    sequence(:github_url) {|n| "https://github.com/thoughtbot/stuff/pulls/#{n}"}
    repo_github_url { "https://github.com/#{repo_name}" }
    sequence(:repo_name) { |n| "thoughtbot/stuff-#{n}" }
    status "needs review"
    title "Doing Stuff"
    user_name "sgrif"
    user_github_url "https://github.com/thoughtbot/sgrif"

    trait :in_progress do
      status "in progress"
    end
  end

  factory :tag do
    name "code"
  end
end
