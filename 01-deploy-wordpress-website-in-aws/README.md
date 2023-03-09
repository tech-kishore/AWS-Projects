# AWS-Projects

## 1. Deploy a wordpress website in AWS

**Project Architecture**
1. WordPress website hosted on Amazon EC2
2. Connect with Amazon RDS database
3. Publicly accessible ove the internet

**Task**
> https://aws.amazon.com/getting-started/hands-on/deploy-wordpress-with-amazon-rds/?ref=gsrchandson

**Modules**
1. Creating a MySQL Database with Amazon RDS (5 minutes): Configure the Amazon RDS database to allow access to specific entities.
 > https://aws.amazon.com/getting-started/hands-on/deploy-wordpress-with-amazon-rds/module-one/?refid=09863622-0e2a-4080-9bba-12d378e294ba
2. Creating an EC2 Instance (10 minutes): Create an EC2 instance to run your WordPress site.
3. Configuring Your Amazon RDS Database (15 minutes): Configure the Amazon RDS database to allow access to specific entities.
 > https://aws.amazon.com/getting-started/hands-on/deploy-wordpress-with-amazon-rds/module-three/?refid=662aeb66-1ee5-4842-b706-60c6a1b4f187
4. Configuring WordPress on EC2 (15 minutes): Install the WordPress application and dependencies on the EC2 instance.
 > https://aws.amazon.com/getting-started/hands-on/deploy-wordpress-with-amazon-rds/module-four/?refid=09863622-0e2a-4080-9bba-12d378e294ba
5. Explore Your New Website and Clean Up (5 minutes): Clean up the resources created in this guide so that you will not be charged.


**Resume Project Title**
> "_Deployed and hosted a highly-available WordPress applivation using EC2, RDS, Route 53, ASG, VPC_"


**Tasks Completed**
1. Created an Amazon RDS instance and an EC2 instance.
2. Allowed network access from your EC2 instance to Amazon RDS instance.
3. Used SSH to connect to EC2 instance and configured a database user to be used by WordPress.
4. Make the WordPress site live - Installed the WordPress application and dependencies on the EC2 instance. Wordpress site is accessible in the browser from anywhere in the world.

-------------------
# Architecture

![image](https://user-images.githubusercontent.com/124598875/224057245-7fa0df34-5ebd-40b8-b518-e4389be41354.png)

## AWS Services
 
**1. Set up Route53 DNS Service -** To manage all the upcoming requests (traffic) that our domain will be having

**2. Create all your AWS Resources in a VPC -** To have a private network in which the cloud computing resources will be allocated, meaning nobody has direct access to it from outside.

**3. Secure your most valuable resources in a Private Subnet -** To restrict access to resources from outside; in this case the database.

**4. Leave your public resources in the AWS Public Subnet -** To make resources accessible public from outside; in this case server of the website.

**5. Store your WordPress content on AWS S3 -** A content storage solution. WordPress installation(s) will have the content available whenever it scales up or off.

**6. Enhance your WordPres Speed with AWS CloudFront CDN -** CloudFront combined with S3 will help to spread the content faster to the end users. This way our WordPress multimedia content will be spread all over AWS CDN Network (Edge Locations) which will be used from our application to reduce the latency. Users will be served by the closest edge location available. So faster content = Faster Site.

**7. Distribute your WordPress Visitors on your environment with AWS Load Balancer -** The AWS ELB will allow us to distribute the traffic load between  instances available or in use depending on how the auto scaling is set.

**8. Setup your WordPress instance in AWS EC2 -** AWS EC2 will allow to host the  WordPress site and files needed.

**9. Scale your WordPress with AWS Autoscaling -** Will benefit WordPress by creating instances based on the traffic demand and will help to save costs while the traffic is low.

**10. AWS RDS & Multi A-Z -**  To host the WordPress Database; completely free and fully managed by AWS; provides useful feature of RDS instances replication between them, that adds even more scalability; provides high availability by enabling the Multi-Availability Zone (Multi A-Z) feature. Keep an eye on this since the price will is double for the RDS.

**11. Monitor your WordPress Environment with AWS Cloudwatch -** In charge of monitoring all the resources in the AWS account; keeps an eye on the metrics that are predefined or as default by AWS resources, such as CPU usage, Memory usage, Disk IO and Networking.

**Traffic Flow:**
> Here is how the visitors get to the site —  once they hit the website domain on their browser their request will pass to the internet, route it to the DNS manager and the DNS manager(Route53) will resolve the request to the specified server, the web server then, will serve the application.

![Alt Text](https://images.clickittech.com/wp-content/uploads/2018/07/scalable-wordpress.gif)



**What will happen when your traffic increases? Well here is the example:**

![image](https://user-images.githubusercontent.com/124598875/224066276-76f7f57a-4840-414e-8892-8507b4218845.png)

> In the image above, we can see that depending on the Aggregate Load, the environment continues to satisfy the demand by creating more instances as it grows and the same happens the other way.


**What actually happens during auto-scaling**

![image](https://images.clickittech.com/wp-content/uploads/2018/07/Wordpress-High-Performance-Scaling.gif)

### Server Caching / WordPress Caching

Server-side caching or WordPress-side caching with a plugin or embedded in a host. If a caching system i not yet implemented, make sure you do from now on as it speeds up the website dramatically.

### CDN: Content Delivery Network

A network of servers or services in which the content will be hosted and this network will be used to transfer the content to all the visitors.
Using a CDN will help to spread the content around the world faster than having it hosted on your server.

## Pro Tips

1. To increase the performance use a Database, query and page caching plugin.
2. Increase the RDS performance with a dedicated Aurora RDS.
3. Use S3 and CloudFront to deliver the content faster.
4. Enable Alarms on AWS Cloudwatch.
5. Enable the Billing Alarm to avoid unwanted charges for usage.
6. Use Reserved Instances! If you are going to stay in AWS for a long time reserve, it will save you up to 30%.
7. Use a Version control system to track your changes and deploy to the instances.

