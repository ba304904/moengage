# Create IAM user Moengage restrict access to Ec2/S3/SQS/Cloudwatch/Route53/IAM,Cloudtrail


resource "aws_iam_user" "user" {
  name = "MoEngage"
  
}

resource "aws_iam_access_key" "user" {
  user = "${aws_iam_user.user.name}"
}

resource "aws_iam_user_policy" "user_ro" {
  name = "test"
  user = "${aws_iam_user.user.name}"
  policy = <<EOF
{
 	"Version": "2012-10-17",
 	"Statement": [{
 		"Action": [
 			"ec2:*",
 			"s3:*",
 			"sqs:*",
 			"cloudwatch:*",
 			"route53:*",
 			"route53domains:*",
 			"iam:*",
 			"cloudtrail:*"
 		],
 		"Effect": "Allow",
 		"Resource": "*"
 	}]
 }
EOF
}


# Create S3 buckets devops and devopsnew

resource "aws_s3_bucket" "b" {
  bucket = "devops"
  acl    = "private"
}

resource "aws_s3_bucket" "c" {
  bucket = "devopsnew"
  acl    = "private"

}

