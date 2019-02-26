workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Zeit"]
}

action "GitHub Action for Zeit" {
  uses = "actions/zeit-now@master"
  args = "deploy"
  secrets = ["ZEIT_TOKEN"]
}
