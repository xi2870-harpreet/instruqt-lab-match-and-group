module "match_and_group" {
  source = "instruqt/instruqt-module-match-and-group-stages"
}

resource "lab" "main" {
  title       = "$match and $group Stages"
  description = "Learn to use the $match and $group aggregation pipeline stages in MongoDB."
  timelimit   = "20m"

  page {
    ref = module.match_and_group.output.page_match_and_group
  }
}
