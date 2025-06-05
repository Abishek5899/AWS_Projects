# Static Website on AWS S3

## 🚀 Project Highlights

- Real-world example of S3 static website hosting
- All configuration done using AWS Management Console
- Modular and simplified design for future extensibility
- Sensitive project details are anonymized for privacy

---

## 🏗️ Architecture

- **Amazon S3** – Stores and serves the static website files (HTML, CSS, JS)
*Diagram:*
![S3 Static Website - Architecture Diagram](https://github.com/user-attachments/assets/246c7b25-5522-49a9-a4aa-121801991f62)


---

## ✅ Prerequisites

To replicate or build upon this project, you'll need:

- An AWS account with permissions to manage S3
- Access to the AWS Management Console
---

## 🛠️ Setup Instructions

### 1. Create an S3 Bucket

1. Log in to the AWS Management Console.
2. Navigate to **S3** > **Create bucket**.
3. Enter a unique bucket name (e.g., `your-bucket-name`).
4. Choose a region (e.g., `us-east-1`).
5. **Uncheck** “Block all public access” to allow website hosting.
6. Click **Create bucket**.

### 2. Enable Static Website Hosting

1. In the S3 console, select your bucket.
2. Go to the **Properties** tab.
3. Scroll to **Static website hosting** and click **Edit**.
4. Select **Enable**.
5. Set:
   - **Index document** to `index.html`
   - **Error document** to `error.html` (or preferred)
6. Save changes.
7. Note the **Bucket website endpoint** (e.g., `http://your-bucket-name.s3-website-<region>.amazonaws.com`)

### 3. Configure Bucket Permissions

1. In the S3 console, select your bucket.
2. Go to the **Permissions** tab > **Bucket policy** > **Edit**.
3. Add this policy (replace `your-bucket-name`):

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "BucketDeletePolicy",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:DeleteObject",
            "Resource": "arn:aws:s3:::website-project-abishek/index.html"
        }
    ]
}
