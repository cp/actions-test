workflow "New workflow" {
  on = "push"
  resolves = ["Post to Slack"]
}

action "GitHub Action for Zeit" {
  uses = "actions/zeit-now@master"
  args = "deploy"
  secrets = ["ZEIT_TOKEN"]
}

action "Post to Slack" {
  uses = "Ilshidur/action-slack@1ee0e72f5aea6d97f26d4a67da8f4bc5774b6cc7"
  needs = ["GitHub Action for Zeit"]
}
