module "match_and_group" {
  source  = "instruqt/instruqt-module-match-and-group-stages"
  version = "1.1.1"
}

resource "lab" "main" {
  title       = "$match and $group Stages"
  description = "Learn to use the $match and $group aggregation pipeline stages in MongoDB."
  layout      = module.match_and_group.output.layout_default

  content {
    chapter "match-and-group" {
      title = "$match and $group"

      page "match-and-group" {
        reference = module.match_and_group.output.page_match_and_group
      }
    }
  }
}
