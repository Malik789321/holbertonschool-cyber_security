# Holbertonschool.com Passive Reconnaissance Report

## 1. Domain Overview
The domain **holbertonschool.com** was analyzed using Shodan to collect information about exposed infrastructure, IP ranges, technologies, and frameworks used across its subdomains.

---

## 2. IP Ranges

The following IP ranges were observed or associated with holbertonschool.com infrastructure:

- 75.2.70.75
- 99.83.190.102
- 13.37.98.87
- 13.36.10.99
- 54.157.56.129
- 35.180.20.42

**Observed Cloud Providers:**
- Amazon AWS
- Cloudflare
- Fastly

---

## 3. Subdomains Technologies

The following technologies and frameworks were identified across subdomains:

### Web Infrastructure
- AWS S3 / CloudFront
- Nginx
- Apache

### Web Frameworks
- Ruby on Rails
- Node.js
- React.js

### CDN / Hosting
- Cloudflare CDN
- AWS EC2 / S3 hosting

---

## 4. Subdomains Observed

Some discovered subdomains include:

- www.holbertonschool.com
- blog.holbertonschool.com
- apply.holbertonschool.com
- support.holbertonschool.com
- assets.holbertonschool.com
- beta.holbertonschool.com

---

## 5. Security Observations

- Multiple CDN layers are used (Cloudflare + AWS)
- No direct origin IP exposure in most cases
- DNS-based subdomain structure is widely distributed
- Third-party services used for email verification (Google, Dropbox, etc.)

---

## 6. Conclusion

holbertonschool.com uses a modern cloud-based infrastructure with multiple subdomains and third-party integrations. The architecture suggests scalability and distributed hosting using AWS and CDN providers.

Further deep scanning via Shodan API would provide more precise port-level and service-level intelligence.

---
