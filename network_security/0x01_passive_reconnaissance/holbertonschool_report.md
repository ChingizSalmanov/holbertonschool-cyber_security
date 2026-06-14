# Passive Reconnaissance Report: holbertonschool.com

## Executive Summary
This report document contains passive reconnaissance data gathered for the domain `holbertonschool.com` using the Shodan search engine. The objective is to identify IP ranges, subdomains, underlying technologies, and frameworks without directly interacting with the target infrastructure.

---

## 1. IP Ranges & Infrastructure
Based on Shodan queries and associated DNS records for `holbertonschool.com`, the domain infrastructure is primarily hosted across top-tier Cloud Service Providers (CSPs), mainly Content Delivery Networks (CDNs) for optimization and DDoS protection.

### Identified IP Ranges & Hosts:
* **Cloudflare Infrastructure (Anycast Network):**
  * `104.16.0.0/12`
  * `172.64.0.0/13`
* **Specific Resolved IPv4 Addresses:**
  * `104.26.14.23`
  * `104.26.15.23`
  * `172.67.75.174`
* **Autonomous System Number (ASN):** * `AS13335` (Cloudflare, Inc.)

---

## 2. Technologies and Frameworks
Shodan HTTP banner analysis and header scraping revealed the following technologies, server software, and frameworks utilized across `holbertonschool.com` and its active subdomains (e.g., `www`, `intranet`):

| Category | Technology / Framework / Software |
| :--- | :--- |
| **Content Delivery Network (CDN)** | Cloudflare |
| **Web Server / Reverse Proxy** | Cloudflare-nginx |
| **SSL/TLS Provider** | Cloudflare Inc ECC CA-3 / Let's Encrypt |
| **Programming Language / Backend** | Ruby / Node.js (Intranet application stack) |
| **Frontend Frameworks** | React.js / Bootstrap |
| **Security Headers Enabled** | Strict-Transport-Security (HSTS), X-Frame-Options, CF-RAY |

---

## 3. Passive Reconnaissance Notes & Methodology
* **Tool Used:** Shodan CLI / Shodan Web Interface
* **Query Methods:** `hostname:holbertonschool.com`, `domain:holbertonschool.com`
* **Findings:** The use of Cloudflare abstracts the origin servers, hiding the direct backend IP ranges. Subdomains pointing to internal tools (like the intranet platform) leverage modern web frameworks with standard security configurations layered through the CDN.
