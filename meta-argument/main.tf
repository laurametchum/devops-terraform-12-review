resource "aws_iam_group" "gp1" {
  name = "nanager"
  lifecycle {
    prevent_destroy = true
    create_before_destroy = true
  }
}
resource "aws_iam_user" "usr1" {
  name = "laura"
  depends_on = [ aws_iam_group.gp1 ]
}